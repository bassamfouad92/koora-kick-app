import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/authentication/presentation/states/forgot_password_state.dart';
import 'package:koora_kick/utils/validators/form_validator.dart';
import 'package:koora_kick/utils/validators/validation_rule.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forgot_password_view_model.g.dart';

@riverpod
class ForgotPasswordViewModel extends _$ForgotPasswordViewModel {
  @override
  ForgotPasswordState build() => const ForgotPasswordState();

  late final AuthRepositoryImp _authRepository =
      ref.read(authRepositoryProvider);

  void inputEmail(String email) {
    state = state.copyWith(
      status: const ForgotPasswordStatus.initial(),
      email: email.trim(),
      formErrors: state.formErrors.copyWith(email: null),
    );
  }

  bool _validate() {
    final emailError = FormValidator.validate(state.email, [
      RequiredRule(message: 'Email cannot be empty.'),
      EmailOrPhoneRule(),
    ]);
    state = state.copyWith(
      formErrors: ForgotPasswordFormErrors(email: emailError),
    );
    return emailError == null;
  }

  Future<void> sendResetLink() async {
    if (!_validate()) {
      return;
    }

    state = state.copyWith(status: const ForgotPasswordStatus.loading());

    final result = await _authRepository.forgotPassword(state.email);
    result.when(
      success: (_) => state = state.copyWith(
        status: const ForgotPasswordStatus.success(),
      ),
      error: (exception) {
        final appError = exception.when(
          connectivity: () => const AppError.network(),
          unauthorized: () => const AppError.api(message: 'Unauthorized'),
          errorWithMessage: (msg) => AppError.api(message: msg),
          error: () =>
              const AppError.api(message: 'Failed to send the reset link'),
          api: (message, statusCode, errors) {
            if (errors.isNotEmpty) {
              state = state.copyWith(
                formErrors: ForgotPasswordFormErrors.fromApi(errors),
              );
            }
            return AppError.api(message: message, code: statusCode);
          },
        );
        state = state.copyWith(status: ForgotPasswordStatus.error(appError));
      },
    );
  }
}
