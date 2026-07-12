import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
sealed class ForgotPasswordStatus with _$ForgotPasswordStatus {
  const factory ForgotPasswordStatus.initial() = _Initial;
  const factory ForgotPasswordStatus.loading() = _Loading;
  const factory ForgotPasswordStatus.error(AppError error) = _Error;
  const factory ForgotPasswordStatus.success() = _Success;
}

@freezed
sealed class ForgotPasswordFormErrors with _$ForgotPasswordFormErrors {
  const ForgotPasswordFormErrors._();

  const factory ForgotPasswordFormErrors({
    @Default(null) String? email,
  }) = _ForgotPasswordFormErrors;

  factory ForgotPasswordFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.fieldName: e.message};
    return ForgotPasswordFormErrors(email: mapped['email']);
  }

  bool get isValid => email == null;
}

@freezed
sealed class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(ForgotPasswordStatus.initial()) ForgotPasswordStatus status,
    @Default('') String email,
    @Default(ForgotPasswordFormErrors()) ForgotPasswordFormErrors formErrors,
  }) = _ForgotPasswordState;
}
