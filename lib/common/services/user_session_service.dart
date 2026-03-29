import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/repositories/token_repository.dart';
import 'package:koora_kick/common/services/jwt_parser_service.dart';
import 'package:koora_kick/common/storage/user_store.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/common/user/respository/user_repository.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_session_service.g.dart';

@Riverpod(keepAlive: true)
class UserSessionService extends _$UserSessionService {
  late final TokenRepository _tokenRepository = ref.read(tokenRepositoryProvider);
  late final UserRepository _userRepository = ref.read(userRepositoryProvider);
  late final UserStore _userStore = ref.read(userStoreProvider);
  late final JwtParserService _tokenParser = ref.read(jwtParserServiceProvider);

  @override
  FutureOr<UserSessionStatus> build() async {
    final token = await _tokenRepository.fetchToken();
    return token.let(
      _resolveStatus,
      orElse: () => const UserSessionStatus.unauthenticated(),
    );
  }

  Future<UserSessionStatus> saveToken(Token token, {String? phoneNumber}) async {
    await _tokenRepository.saveToken(token);
    final status = await _resolveStatus(token);
    state = AsyncValue.data(status);
    return status;
  }

  void setUser(User user) async {
    await _userStore.save(user);
    state = AsyncValue.data(UserSessionStatus.authenticated(user: user));
  }

  void resetPasscode(Token token, {required String phone}) {
    state = AsyncValue.data(UserSessionStatus.resettingPasscode(phone: phone, token: token));
  }

  Future<void> logout() async {
    // 1. Clear Repositories/Stores
    await _tokenRepository.remove();
    await _userStore.remove();

    // 2. Clear SharedPreferences
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.clear();

    // 3. Clear FlutterSecureStorage (for any other stores using it)
    const secureStorage = FlutterSecureStorage();
    await secureStorage.deleteAll();

    // 4. Clear Hive boxes from disk
    await Hive.deleteFromDisk();

    state = const AsyncValue.data(UserSessionStatus.unauthenticated());
  }

  Future<UserSessionStatus> _resolveStatus(Token token) async {
    final partialUser = token.user ?? _tokenParser.parseUser(token.raw!);
    return partialUser.let(
      (user) async {
        if (user.verified ?? false) {
          return _fetchUser(user);
        }
        return UserSessionStatus.unverified(user: user, token: token);
      },
      orElse: () => const UserSessionStatus.unauthenticated(),
    );
  }

  Future<UserSessionStatus> _fetchUser(User partialUser) async {
    final user = await _userStore.fetch();
    if (user != null) {
      return UserSessionStatus.authenticated(user: user);
    }
    final result = await _userRepository.getMe();
    return result.when(
      success: (user) async {
        await _userStore.save(user);
        return UserSessionStatus.authenticated(user: user);
      },
      error: (exception) async => const UserSessionStatus.unauthenticated(),
    );
  }

  UserSessionStatus? get currentStatus => state.value;
}
