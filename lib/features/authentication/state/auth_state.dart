import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/user/model/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.loggedIn(User user) = AuthStateLoggedIn;


  const factory AuthState.loggedOut() = AuthStateLoggedOut;

  const factory AuthState.error(AppException error) = _Error;
}
