import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/locations/domain/entities/location_country_model.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_form_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_state.freezed.dart';

@freezed
sealed class CreateAccountStatus with _$CreateAccountStatus {
  const factory CreateAccountStatus.initial() = _Initial;
  const factory CreateAccountStatus.loading() = _Loading;
  const factory CreateAccountStatus.error(AppError error) = _Error;
  const factory CreateAccountStatus.success(UserSessionStatus status) = _Success;
}

const String emptyString = '';

@freezed
sealed class CreateAccountState with _$CreateAccountState {
  const CreateAccountState._(); // Allows custom getters/methods

  const factory CreateAccountState({
    @Default(CreateAccountStatus.initial()) CreateAccountStatus createAccountStatus,
    @Default(emptyString) String fullName,
    @Default(emptyString) String email,
    @Default(PhoneNumber(number: '', countryCode: '966')) PhoneNumber phoneNumber,
    @Default(CountryModel.defaultCountry) CountryModel country,
    @Default(emptyString) String password,
    @Default(false) bool agreedToTerms,
    // Location selection, pushed to the profile after register. The lists
    // themselves live in locationCountriesProvider / citiesProvider.
    LocationCountryModel? selectedLocationCountry,
    CityModel? selectedCity,
    @Default(CreateAccountFormErrors()) CreateAccountFormErrors formErrors,
    AppError? error,
  }) = _CreateAccountState;
}
