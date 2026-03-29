import 'package:koora_kick/common/cities/data/repositories/city_repository.dart';
import 'package:koora_kick/common/cities/data/requests/get_cities_request.dart';
import 'package:koora_kick/app/provider/country_provider.dart';
import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/cities/domain/repositories/city_repository.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/common/user/respository/user_repository.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';
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
  CreateAccountState build() {
    final countryAsync = ref.watch(countryNotifierProvider);

    return countryAsync.when(
      data: (countryState) {
        final defaultCountry = countryState.defaultCountry;
        Future.microtask(() => fetchCities(defaultCountry.id));

        return CreateAccountState(
          createAccountStatus: const CreateAccountStatus.initial(),
          country: defaultCountry,
          phoneNumber: PhoneNumber(number: '', countryCode: defaultCountry.displayCode),
        );
      },
      loading: () => const CreateAccountState(
        createAccountStatus: CreateAccountStatus.initial(),
      ),
      error: (error, stack) => const CreateAccountState(),
    );
  }

  late final UserRepository _registerRepository = ref.read(userRepositoryProvider);
  late final CreateAccountValidator _validator = ref.read(createAccountValidatorProvider);
  late final CityRepository _cityService = ref.read(cityRepositoryProvider);
  late final UserSessionService _sessionService = ref.read(userSessionServiceProvider.notifier);
  late final AppSettingsStore _appSettingsStore = ref.read(appSettingsStoreProvider);

  void inputCountry(CountryModel country) {
    state = state.copyWith(
        createAccountStatus: const CreateAccountStatus.initial(),
        country: country,
        phoneNumber: state.phoneNumber.copyWith(countryCode: country.code),
        selectedCity: state.selectedCity.copyWith(
            id: '', name: '', isSelected: false)
    );
    fetchCities(country.id);
  }

  Future<void> fetchCities(String countryId) async {
    if (countryId.isEmpty) {
      return;
    }

    state = state.copyWith(isCitiesLoading: true);
    try {
      final cities = await _cityService.getCities(GetCitiesRequest(countryId: countryId));
      state = state.copyWith(
        createAccountStatus: const CreateAccountStatus.initial(),
        cities: cities,
        isCitiesLoading: false,
      );
    } catch (_) {
      state = state.copyWith(
        isCitiesLoading: false,
        createAccountStatus: const CreateAccountStatus.error(AppError.api(message: "failed")),
      );
    }
  }

  void inputCity(CityModel city) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      selectedCity: city,
      cities: state.cities.map((element) => element.copyWith(isSelected: element.id == city.id)).toList(),
      formErrors: state.formErrors.copyWith(city: null),
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

  void inputPasscode(String passcode) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      passcode: passcode.trim(),
      formErrors: state.formErrors.copyWith(passcode: null),
    );
  }

  void inputConfirmPasscode(String confirmPasscode) {
    state = state.copyWith(
      createAccountStatus: const CreateAccountStatus.initial(),
      confirmPasscode: confirmPasscode.trim(),
      formErrors: state.formErrors.copyWith(confirmPasscode: null),
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

    final registerRequest = RegisterRequest(phoneNumber: state.phoneNumber.fullNumber, passcode: state.passcode, name: state.fullName, city: state.selectedCity.id);

    try {
      final result = await _registerRepository.create(registerRequest);
      result.when(
        success: (registerResponse) async {
          await _appSettingsStore.setFirstTimeLogin(true);
          final userSessionStatus = await _sessionService.saveToken(
            registerResponse.token,
            phoneNumber: state.phoneNumber.fullNumber,
          );
          state = state.copyWith(
            createAccountStatus: CreateAccountStatus.success(userSessionStatus),
          );
        },
        error: (exception) {
          final appError = exception.when(
            connectivity: () => const AppError.network(),
            unauthorized: () => const AppError.api(message: 'Unauthorized'),
            errorWithMessage: (msg) => AppError.api(message: msg),
            error: () => const AppError.api(message: 'registration failed'),
            api: (message, statusCode, errors) {
              if (errors.isNotEmpty) {
                final formErrors = CreateAccountFormErrors.fromApi(errors);
                state = state.copyWith(formErrors: formErrors);
                return AppError.api(
                  message: errors.first.message,
                  code: statusCode
                );
              }
              return AppError.api(message: message, code: statusCode);
            },
          );
          state = state.copyWith(
            createAccountStatus: CreateAccountStatus.error(appError),
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        createAccountStatus: const CreateAccountStatus.error(AppError.api(message: "Registration failed")),
      );
    }
  }
}
