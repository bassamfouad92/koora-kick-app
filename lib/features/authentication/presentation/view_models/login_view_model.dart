import 'package:koora_kick/app/provider/country_provider.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/managers/firebase/manager/firebase_manager.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/authentication/data/requests/login_request.dart';
import 'package:koora_kick/features/authentication/presentation/auth_validator.dart';
import 'package:koora_kick/features/authentication/presentation/states/login_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'login_view_model.g.dart';

typedef Strings = AuthStrings;

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() => ref.watch(countryNotifierProvider).when(
      data: (countryState) => LoginState(
        country: countryState.defaultCountry,
        phoneNumber: PhoneNumber(
          number: '',
          countryCode: countryState.defaultCountry.displayCode,
        ),
      ),
      loading: () => const LoginState(loginStatus: LoginStatus.loading()),
      error: (error, stack) => const LoginState(),
    );

  late final AuthRepositoryImp _authRepository = ref.read(authRepositoryProvider);
  late final AuthValidator _validator = ref.read(authValidatorProvider);
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
      phoneNumber: state.phoneNumber.fullNumber,
      passcode: state.passcode,
    );

    try {
      final result = await _authRepository.login(loginRequest);
      result.when(
        success: (loginResponse) async {
          await _appSettingsStore.setFirstTimeLogin(true);
          final userSessionStatus = await _sessionService.saveToken(
            loginResponse.token,
            phoneNumber: state.phoneNumber.fullNumber,
          );
          state = state.copyWith(
            loginStatus: LoginStatus.success(userSessionStatus)
          );
        },
        error: (exception) {
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
                  field: errors.first.key ?? '',
                  message: errors.first.message,
                );
              }
              return AppError.api(message: message, code: statusCode);
            },
          );
          state = state.copyWith(
            loginStatus: LoginStatus.error(appError),
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        loginStatus:
            const LoginStatus.error(AppError.api(message: "Login failed")),
      );
    }
  }

  void inputCountry(CountryModel country) {
    state = state.copyWith(
      country: country,
      phoneNumber: state.phoneNumber.copyWith(countryCode: country.code),
    );
  }

  void inputPasscode(String passcode) {
    state = state.copyWith(
      passcode: passcode,
      formErrors: state.formErrors.copyWith(passcode: null),
    );
  }

  void inputPhoneNumber(String phoneNumber) {
    final updatedPhone = state.phoneNumber.copyWith(number: phoneNumber);

    state = state.copyWith(
      loginStatus: const LoginStatus.initial(),
      phoneNumber: updatedPhone,
      formErrors: state.formErrors.copyWith(phoneNumber: null),
    );
  }
}



