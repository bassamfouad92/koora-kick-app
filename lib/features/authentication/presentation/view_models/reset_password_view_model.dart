import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/authentication/presentation/states/reset_password_state.dart';
import 'package:koora_kick/utils/validators/form_validator.dart';
import 'package:koora_kick/utils/validators/validation_rule.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reset_password_view_model.g.dart';

@riverpod
class ResetPasswordViewModel extends _$ResetPasswordViewModel {
  @override
  ResetPasswordState build() => const ResetPasswordState();

  late final AuthRepositoryImp _authRepository =
      ref.read(authRepositoryProvider);

  void inputPassword(String password) {
    state = state.copyWith(
      status: const ResetPasswordStatus.initial(),
      password: password,
      formErrors: state.formErrors.copyWith(password: null),
    );
  }

  void inputConfirmPassword(String confirmPassword) {
    state = state.copyWith(
      status: const ResetPasswordStatus.initial(),
      confirmPassword: confirmPassword,
      formErrors: state.formErrors.copyWith(confirmPassword: null),
    );
  }

  bool _validate() {
    final passwordError = FormValidator.validate(state.password, [
      RequiredRule(message: 'Password cannot be empty.'),
      MinLengthRule(8, message: 'Password must be at least 8 characters.'),
    ]);

    String? confirmError = FormValidator.validate(state.confirmPassword, [
      RequiredRule(message: 'Please confirm your password.'),
    ]);
    if (confirmError == null && state.password != state.confirmPassword) {
      confirmError = 'Passwords do not match.';
    }

    state = state.copyWith(
      formErrors: ResetPasswordFormErrors(
        password: passwordError,
        confirmPassword: confirmError,
      ),
    );
    return passwordError == null && confirmError == null;
  }

  /// [token] is the 64-char hex token delivered by the reset email deep link.
  Future<void> resetPassword(String token) async {
    if (!_validate()) {
      return;
    }

    state = state.copyWith(status: const ResetPasswordStatus.loading());

    final result = await _authRepository.resetPassword(
      token: token,
      password: state.password,
    );
    result.when(
      success: (_) => state = state.copyWith(
        status: const ResetPasswordStatus.success(),
      ),
      error: (exception) {
        final appError = exception.when(
          connectivity: () => const AppError.network(),
          unauthorized: () => const AppError.api(message: 'Unauthorized'),
          errorWithMessage: (msg) => AppError.api(message: msg),
          error: () => const AppError.api(message: 'Password reset failed'),
          api: (message, statusCode, errors) {
            if (errors.isNotEmpty) {
              state = state.copyWith(
                formErrors: ResetPasswordFormErrors.fromApi(errors),
              );
            }
            return AppError.api(message: message, code: statusCode);
          },
        );
        state = state.copyWith(status: ResetPasswordStatus.error(appError));
      },
    );
  }
}
