import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:koora_kick/common/http/api_error_item.dart';

part 'login_state.freezed.dart';

@freezed
sealed class LoginStatus with _$LoginStatus {
  const factory LoginStatus.initial() = _Initial;
  const factory LoginStatus.loading() = _Loading;
  const factory LoginStatus.error(AppError error) = _Error;
  const factory LoginStatus.success(UserSessionStatus status) = _Success;
}

const String emptyString = '';

@freezed
sealed class LoginFormErrors with _$LoginFormErrors {
  const LoginFormErrors._();

  const factory LoginFormErrors({
    @Default(null) String? email,
    @Default(null) String? password,
  }) = _LoginFormErrors;

  factory LoginFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.fieldName: e.message};
    return LoginFormErrors(
      email: mapped['email'],
      password: mapped['password'],
    );
  }

  bool get isValid => email == null && password == null;
}

@freezed
sealed class LoginState with _$LoginState {
  const LoginState._(); // Required for custom getters

  const factory LoginState({
    @Default(LoginStatus.initial()) LoginStatus loginStatus,
    @Default(emptyString) String email,
    @Default(emptyString) String password,
    @Default(LoginFormErrors()) LoginFormErrors formErrors,
  }) = _LoginState;
}
