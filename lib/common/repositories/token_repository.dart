import 'dart:convert';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:koora_kick/common/constants/store_key.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:koora_kick/utils/platform_type.dart';

abstract interface class TokenRepositoryProtocol {
  Future<void> remove();

  Future<void> saveToken(Token token);

  Future<Token?> fetchToken();
}

final tokenRepositoryProvider = Provider(TokenRepository.new);

class TokenRepository implements TokenRepositoryProtocol {
  TokenRepository(this._ref);

  late final PlatformType _platform = _ref.read(platformTypeProvider);
  late final SharedPreferences _prefs = _ref.read(sharedPreferencesProvider);
  final Ref _ref;
  Token? _token;

  @override
  Future<void> remove() async {
    _token = null;

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.delete(key: StoreKey.token.toString());
      } on Exception {}
    } else {
      await _prefs.remove(StoreKey.token.toString());
    }

    await _prefs.remove(StoreKey.user.toString());
  }

  @override
  Future<void> saveToken(Token token) async {
    _token = token;
    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.write(
            key: StoreKey.token.toString(), value: json.encode(token.toJson()),);
      } on Exception {}
    } else {
      await _prefs.setString(StoreKey.token.toString(), json.encode(token.toJson()));
    }
  }

  @override
  Future<Token?> fetchToken() async {
    // if (_token != null) {
    //   return _token;
    // }

    String? tokenValue;

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      const storage = FlutterSecureStorage();
      tokenValue = await storage.read(key: StoreKey.token.toString());
    } else {
      tokenValue = _prefs.getString(StoreKey.token.toString());
    }
    try {
      if (tokenValue != null) {
        _token = Token.fromJson(json.decode(tokenValue) as Map<String, dynamic>);
      }
    } on Exception {
      return _token;
    }

    return _token;
  }
}
