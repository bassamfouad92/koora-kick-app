import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';

part 'login_state.freezed.dart';

@freezed
sealed class LoginStatus with _$LoginStatus {
  const factory LoginStatus.initial() = _Initial;
  const factory LoginStatus.loading() = _Loading;
  const factory LoginStatus.error(AppError error) = _Error;
  const factory LoginStatus.success(UserSessionStatus status) = _Success;
}

const String emptyString = '';

@freezed
sealed class LoginFormErrors with _$LoginFormErrors {
  const LoginFormErrors._();

  const factory LoginFormErrors({
    @Default(null) String? phoneNumber,
    @Default(null) String? passcode,
  }) = _LoginFormErrors;

  factory LoginFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.key: e.message};
    return LoginFormErrors(
      phoneNumber: mapped['phone'],
      passcode: mapped['pin'],
    );
  }

  bool get isValid => phoneNumber == null && passcode == null;
}

@freezed
sealed class LoginState with _$LoginState {
  const LoginState._(); // Required for custom getters

  const factory LoginState({
    @Default(LoginStatus.initial()) LoginStatus loginStatus,
    @Default(PhoneNumber(number: '', countryCode: '20')) PhoneNumber phoneNumber,
    @Default(emptyString) String passcode,
    @Default(CountryModel.defaultCountry) CountryModel country,
    @Default(LoginFormErrors()) LoginFormErrors formErrors,
  }) = _LoginState;
}





