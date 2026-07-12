import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/locations/domain/entities/location_country_model.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/common/user/request/update_profile_request.dart';
import 'package:koora_kick/common/user/respository/user_repository.dart';
import 'package:koora_kick/features/authentication/data/requests/social_auth_callback_request.dart';
import 'package:koora_kick/features/authentication/data/services/social_auth_service.dart';
import 'package:koora_kick/features/signup/create_account/create_account_validator.dart';
import 'package:koora_kick/features/signup/create_account/data/requests/register_request.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_form_errors.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_state.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_account_view_model.g.dart';

@Riverpod(keepAlive: false)
class CreateAccountViewModel extends _$CreateAccountViewModel {
  @override
  CreateAccountState build() => const CreateAccountState();

  late final UserRepository _registerRepository = ref.read(userRepositoryProvider);
  late final CreateAccountValidator _validator = ref.read(createAccountValidatorProvider);
  late final SocialAuthService _socialAuthService = ref.read(socialAuthServiceProvider);
  late final UserSessionService _sessionService = ref.read(userSessionServiceProvider.notifier);
  late final AppSettingsStore _appSettingsStore = ref.read(appSettingsStoreProvider);

  void inputLocationCountry(LocationCountryModel country) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      selectedLocationCountry: country,
      // City belongs to the previous country; reset it.
      selectedCity: null,
      formErrors: state.formErrors.copyWith(country: null, city: null),
    );
  }

  void inputCity(CityModel city) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      selectedCity: city,
      formErrors: state.formErrors.copyWith(city: null),
    );
  }

  void inputCountry(CountryModel country) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      country: country,
      phoneNumber: state.phoneNumber.copyWith(countryCode: country.code),
    );
  }

  Future<void> inputPhoneNumber(String phoneNumber) async {
    final updatedPhone = state.phoneNumber.copyWith(number: phoneNumber);
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      phoneNumber: updatedPhone,
      formErrors: state.formErrors.copyWith(phoneNumber: null),
    );
  }

  void inputFullName(String name) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      fullName: name.trim(),
      formErrors: state.formErrors.copyWith(name: null),
    );
  }

  void inputEmail(String email) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      email: email.trim(),
      formErrors: state.formErrors.copyWith(email: null),
    );
  }

  void inputPassword(String password) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      password: password,
      formErrors: state.formErrors.copyWith(password: null),
    );
  }

  void toggleAgreedToTerms() {
    state = state.copyWith(
      agreedToTerms: !state.agreedToTerms,
      formErrors: state.formErrors.copyWith(terms: null),
    );
  }

  Future<bool> _validate() async {
    final errors = await _validator.validate(state);
    state = state.copyWith(formErrors: errors);
    return errors.isValid;
  }

  Future<void> register() async {
    if (!(await _validate())) {
      return;
    }

    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.loading(),
      error: null,
    );

    // Note: the backend register contract only accepts name/email/password;
    // country/city are pushed via PATCH /users/profile right after, and the
    // phone number stays local until the profile API supports it.
    final registerRequest = RegisterRequest(
      name: state.fullName,
      email: state.email.trim(),
      password: state.password,
    );

    try {
      final result = await _registerRepository.create(registerRequest);
      result.when(
        success: (session) async {
          await _updateProfileLocation(session.token);
          await _appSettingsStore.setFirstTimeLogin(true);
          final userSessionStatus =
              await _sessionService.saveToken(session.token, user: session.user);
          state = state.copyWith(
            createAccountStatus: CreateAccountStatus.success(userSessionStatus),
          );
        },
        error: _handleException,
      );
    } catch (e) {
      state = state.copyWith(
        createAccountStatus: const CreateAccountStatus.error(
          AppError.api(message: 'Registration failed'),
        ),
      );
    }
  }

  /// Pushes the selected country/city to the profile using the fresh
  /// register token. A failure here never blocks signup — the user can
  /// update the location later from the profile.
  Future<void> _updateProfileLocation(String token) async {
    final countryId = state.selectedLocationCountry?.id;
    final cityId = state.selectedCity?.id;
    if (countryId == null && cityId == null) {
      return;
    }

    await _registerRepository.updateProfile(
      UpdateProfileRequest(
        countryId: countryId,
        cityId: cityId,
        token: token,
      ),
    );
  }

  Future<void> socialLogin(SocialAuthProvider provider) async {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.loading(),
    );

    final result = await _socialAuthService.signIn(provider);
    result.when(
      success: (userSessionStatus) async {
        await _appSettingsStore.setFirstTimeLogin(true);
        state = state.copyWith(
          createAccountStatus: CreateAccountStatus.success(userSessionStatus),
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
      error: () => const AppError.api(message: 'Registration failed'),
      api: (message, statusCode, errors) {
        if (errors.isNotEmpty) {
          final formErrors = CreateAccountFormErrors.fromApi(errors);
          state = state.copyWith(formErrors: formErrors);
          return AppError.api(
            message: errors.first.message,
            code: statusCode,
          );
        }
        return AppError.api(message: message, code: statusCode);
      },
    );
    state = state.copyWith(
      createAccountStatus: CreateAccountStatus.error(appError),
    );
  }
}
