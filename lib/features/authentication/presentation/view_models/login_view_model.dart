import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/authentication/data/requests/login_request.dart';
import 'package:koora_kick/features/authentication/data/requests/social_auth_callback_request.dart';
import 'package:koora_kick/features/authentication/data/services/social_auth_service.dart';
import 'package:koora_kick/features/authentication/presentation/auth_validator.dart';
import 'package:koora_kick/features/authentication/presentation/states/login_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'login_view_model.g.dart';

typedef Strings = AuthStrings;

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() => const LoginState();

  late final AuthRepositoryImp _authRepository = ref.read(authRepositoryProvider);
  late final AuthValidator _validator = ref.read(authValidatorProvider);
  late final SocialAuthService _socialAuthService = ref.read(socialAuthServiceProvider);
  late final UserSessionService _sessionService = ref.read(userSessionServiceProvider.notifier);
  late final AppSettingsStore _appSettingsStore = ref.read(appSettingsStoreProvider);

  Future<bool> validate() async {
    final errors = await _validator.validate(state);
    state = state.copyWith(formErrors: errors);
    return errors.isValid;
  }

  Future<void> login() async {
    if (!await validate()) {
      return;
    }

    state = state.copyWith(loginStatus: const LoginStatus.loading());

    final loginRequest = LoginRequest(
      email: state.email.trim(),
      password: state.password,
    );

    try {
      final result = await _authRepository.login(loginRequest);
      result.when(
        success: (session) async {
          await _appSettingsStore.setFirstTimeLogin(true);
          final userSessionStatus =
              await _sessionService.saveToken(session.token, user: session.user);
          state = state.copyWith(
            loginStatus: LoginStatus.success(userSessionStatus),
          );
        },
        error: _handleException,
      );
    } catch (e) {
      state = state.copyWith(
        loginStatus:
            const LoginStatus.error(AppError.api(message: 'Login failed')),
      );
    }
  }

  Future<void> socialLogin(SocialAuthProvider provider) async {
    state = state.copyWith(loginStatus: const LoginStatus.loading());

    final result = await _socialAuthService.signIn(provider);
    result.when(
      success: (userSessionStatus) async {
        await _appSettingsStore.setFirstTimeLogin(true);
        state = state.copyWith(
          loginStatus: LoginStatus.success(userSessionStatus),
        );
      },
      error: _handleException,
    );
  }

  void _handleException(AppException exception) {
    final appError = exception.when(
      connectivity: () => const AppError.network(),
      unauthorized: () => const AppError.api(message: 'Unauthorized'),
      errorWithMessage: (msg) => AppError.api(message: msg),
      error: () => const AppError.api(message: 'Login failed'),
      api: (message, statusCode, errors) {
        if (errors.isNotEmpty) {
          final formErrors = LoginFormErrors.fromApi(errors);
          state = state.copyWith(formErrors: formErrors);
          return AppError.formInvalid(
            field: errors.first.fieldName ?? '',
            message: errors.first.message,
          );
        }
        return AppError.api(message: message, code: statusCode);
      },
    );
    state = state.copyWith(
      loginStatus: LoginStatus.error(appError),
    );
  }

  void inputEmail(String email) {
    state = state.copyWith(
      loginStatus: const LoginStatus.initial(),
      email: email,
      formErrors: state.formErrors.copyWith(email: null),
    );
  }

  void inputPassword(String password) {
    state = state.copyWith(
      password: password,
      formErrors: state.formErrors.copyWith(password: null),
    );
  }
}
