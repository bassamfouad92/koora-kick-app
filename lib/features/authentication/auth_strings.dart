import 'package:flutter/foundation.dart';

@immutable
class AuthStrings {
  const AuthStrings._();
  static const loginMainTitle = 'login_mainTitle';
  static const continueButton = 'global_continue';
  static const selectCountryCodeTitle = 'global_selection_country_code';
  static const validationPhoneNumberRequired = 'login_validation_phone_required';
  static const validationInvalidPhoneNumber = 'validation_invalid_phone_number';
  static const globalPasscode = "global_passcode";
  static const resetPasscodeTitle = "auth_resetPasscode_resetTitle";
  static const createPasscodeTitle = "auth_resetPasscode_createTitle";
  static const successPasscodeTitle = "auth_resetPasscode_successTitle";
  static const successPasscodeDescription = "auth_resetPasscode_successDescription";
  static const validationPasscodeLength = "auth_createPasscode_validation_length";
  static const validationPasscodeMismatch = "auth_createPasscode_validation_mismatch";
  static const validationTokenRequired = "auth_createPasscode_validation_tokenRequired";
  static const errorCreatePasscodeFailed = "auth_createPasscode_error_failed";
  static const errorSendOtpFailed = "auth_resetPasscode_error_sendOtpFailed";
  static const searchCountryText = "auth_country_searchCountryText";
  static const noCountriesFoundText = "auth_country_noCountriesFound";
  static const globalRetry = "global_retry";
  static const somethingWentWrong = "global_something_went_wrong";
  static const forgotMyPassCodeButton = "security_pin_forgotMyPassCodeButton";
}