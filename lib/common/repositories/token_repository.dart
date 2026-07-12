import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:koora_kick/common/constants/store_key.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:koora_kick/utils/platform_type.dart';

abstract interface class TokenRepositoryProtocol {
  Future<void> remove();

  Future<void> saveToken(String token);

  Future<String?> fetchToken();
}

final tokenRepositoryProvider = Provider(TokenRepository.new);

class TokenRepository implements TokenRepositoryProtocol {
  TokenRepository(this._ref);

  late final PlatformType _platform = _ref.read(platformTypeProvider);
  late final SharedPreferences _prefs = _ref.read(sharedPreferencesProvider);
  final Ref _ref;
  String? _token;

  bool get _usesSecureStorage =>
      _platform == PlatformType.iOS ||
      _platform == PlatformType.android ||
      _platform == PlatformType.linux;

  @override
  Future<void> remove() async {
    _token = null;

    if (_usesSecureStorage) {
      const storage = FlutterSecureStorage();
      try {
        await storage.delete(key: StoreKey.token.toString());
      } on Exception catch (e) {
        AppLogger.instance.info('Failed to delete secure token: $e');
      }
    } else {
      await _prefs.remove(StoreKey.token.toString());
    }

    await _prefs.remove(StoreKey.user.toString());
  }

  @override
  Future<void> saveToken(String token) async {
    _token = token;

    if (_usesSecureStorage) {
      const storage = FlutterSecureStorage();
      try {
        await storage.write(key: StoreKey.token.toString(), value: token);
      } on Exception catch (e) {
        // Secure storage can fail (e.g. keychain access issues); fall back
        // to prefs so the session is still persisted.
        AppLogger.instance.info('Secure token save failed, falling back to prefs: $e');
        await _prefs.setString(StoreKey.token.toString(), token);
      }
    } else {
      await _prefs.setString(StoreKey.token.toString(), token);
    }
  }

  @override
  Future<String?> fetchToken() async {
    if (_usesSecureStorage) {
      const storage = FlutterSecureStorage();
      try {
        _token = await storage.read(key: StoreKey.token.toString());
      } on Exception catch (e) {
        AppLogger.instance.info('Secure token read failed, falling back to prefs: $e');
        _token = _prefs.getString(StoreKey.token.toString());
      }
    } else {
      _token = _prefs.getString(StoreKey.token.toString());
    }

    return _token;
  }
}
