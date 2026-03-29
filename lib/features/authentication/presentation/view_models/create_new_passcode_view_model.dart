import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/authentication/data/requests/create_new_passcode_request.dart';
import 'package:koora_kick/features/authentication/presentation/states/create_new_passcode_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_new_passcode_view_model.g.dart';

@riverpod
class CreateNewPasscodeViewModel extends _$CreateNewPasscodeViewModel {
  @override
  CreateNewPasscodeState build() => const CreateNewPasscodeState();

  late final _authRepository = ref.read(authRepositoryProvider);
  late final _sessionService = ref.read(userSessionServiceProvider.notifier);

  void inputPasscode(String passcode) {
    state = state.copyWith(
      passcode: passcode,
      formErrors: state.formErrors.copyWith(passcode: null),
    );
  }

  void inputConfirmPasscode(String confirmPasscode) {
    state = state.copyWith(
      confirmPasscode: confirmPasscode,
      formErrors: state.formErrors.copyWith(confirmPasscode: null),
    );
  }

  Future<void> submit() async {
    if (state.passcode.length < 4) {
      state = state.copyWith(
        formErrors: state.formErrors.copyWith(
          passcode: AuthStrings.validationPasscodeLength.localized(),
        ),
      );
      return;
    }

    if (state.passcode != state.confirmPasscode) {
      state = state.copyWith(
        formErrors: state.formErrors.copyWith(
          confirmPasscode: AuthStrings.validationPasscodeMismatch.localized(),
        ),
      );
      return;
    }

    state = state.copyWith(status: const CreateNewPasscodeStatus.loading());

    final session = _sessionService.currentStatus;
    String? token;

    if (session is UnverifiedStatus) {
      token = session.token.raw;
    } else if (session is ResettingPasscodeStatus) {
      token = session.token.raw;
    }

    if (token == null) {
      state = state.copyWith(
        status: CreateNewPasscodeStatus.error(
          AppError.api(message: AuthStrings.validationTokenRequired.localized()),
        ),
      );
      return;
    }

    final request = CreateNewPasscodeRequest(
      passcode: state.passcode,
      confirm: state.confirmPasscode,
      token: token,
    );
    final result = await _authRepository.createNewPasscode(request);

    result.when(
      success: (_) {
        state = state.copyWith(status: const CreateNewPasscodeStatus.success());
      },
      error: (exception) {
        final appError = exception.when(
          connectivity: () => const AppError.network(),
          unauthorized: () => const AppError.api(message: 'Unauthorized'),
          errorWithMessage: (msg) => AppError.api(message: msg),
          error: () => AppError.api(message: AuthStrings.errorCreatePasscodeFailed.localized()),
          api: (message, statusCode, errors) {
            if (errors.isNotEmpty) {
              final formErrors = CreateNewPasscodeFormErrors.fromApi(errors);
              state = state.copyWith(formErrors: formErrors);
              return AppError.formInvalid(
                field: errors.first.key ?? '',
                message: errors.first.message,
              );
            }
            return AppError.api(message: message, code: statusCode);
          },
        );
        state = state.copyWith(status: CreateNewPasscodeStatus.error(appError));
      },
    );
  }

  Future<void> logout() async {
    await _sessionService.logout();
  }
}
