import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

enum PasswordStrength { none, weak, medium, strong }

@freezed
sealed class ResetPasswordStatus with _$ResetPasswordStatus {
  const factory ResetPasswordStatus.initial() = _Initial;
  const factory ResetPasswordStatus.loading() = _Loading;
  const factory ResetPasswordStatus.error(AppError error) = _Error;
  const factory ResetPasswordStatus.success() = _Success;
}

@freezed
sealed class ResetPasswordFormErrors with _$ResetPasswordFormErrors {
  const ResetPasswordFormErrors._();

  const factory ResetPasswordFormErrors({
    @Default(null) String? password,
    @Default(null) String? confirmPassword,
  }) = _ResetPasswordFormErrors;

  factory ResetPasswordFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.fieldName: e.message};
    return ResetPasswordFormErrors(
      password: mapped['password'] ?? mapped['token'],
    );
  }

  bool get isValid => password == null && confirmPassword == null;
}

@freezed
sealed class ResetPasswordState with _$ResetPasswordState {
  const ResetPasswordState._();

  const factory ResetPasswordState({
    @Default(ResetPasswordStatus.initial()) ResetPasswordStatus status,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(ResetPasswordFormErrors()) ResetPasswordFormErrors formErrors,
  }) = _ResetPasswordState;

  PasswordStrength get strength {
    if (password.isEmpty) {
      return PasswordStrength.none;
    }

    final score = [
      password.length >= 8,
      password.length >= 12,
      password.contains(RegExp('[0-9]')),
      password.contains(RegExp('[A-Z]')),
      password.contains(RegExp('[^A-Za-z0-9]')),
    ].where((passed) => passed).length;

    return switch (score) {
      <= 1 => PasswordStrength.weak,
      <= 3 => PasswordStrength.medium,
      _ => PasswordStrength.strong,
    };
  }
}
