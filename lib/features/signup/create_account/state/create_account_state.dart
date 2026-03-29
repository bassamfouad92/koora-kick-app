// Force rebuild
import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_form_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_state.freezed.dart';

// Enum for account creation status
@freezed
sealed class CreateAccountStatus with _$CreateAccountStatus {
  const factory CreateAccountStatus.initial() = _Initial;
  const factory CreateAccountStatus.loading() = _Loading;
  const factory CreateAccountStatus.error(AppError error) = _Error;
  const factory CreateAccountStatus.success(UserSessionStatus status) = _Success;
}

// Constants
const String emptyString = '';
const defaultCity = CityModel(
  name: '', id: ''
);

@freezed
sealed class CreateAccountState with _$CreateAccountState {
  const CreateAccountState._(); // Allows custom getters/methods

  const factory CreateAccountState({
    @Default(CreateAccountStatus.initial()) CreateAccountStatus createAccountStatus,
    @Default(PhoneNumber(number: '', countryCode: '20')) PhoneNumber phoneNumber,
    @Default(emptyString) String fullName,
    @Default(defaultCity) CityModel selectedCity,
    @Default(emptyString) String passcode,
    @Default(emptyString) String confirmPasscode,
    @Default(CountryModel.defaultCountry) CountryModel country,
    @Default([]) List<CityModel> cities,
    @Default(false) bool isCitiesLoading,
    @Default(CreateAccountFormErrors()) CreateAccountFormErrors formErrors,
    AppError? error,
  }) = _CreateAccountState;

}