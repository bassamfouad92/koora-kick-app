import 'package:flutter/foundation.dart';

@immutable
class AuthStrings {
  const AuthStrings._();
  static const loginMainTitle = 'login_mainTitle';
  static const welcomeBackTitle = 'login_welcomeBackTitle';
  static const loginSubtitle = 'login_subtitle';
  static const emailOrPhoneLabel = 'login_emailOrPhone_label';
  static const emailOrPhoneHint = 'login_emailOrPhone_hint';
  static const passwordLabel = 'global_password';
  static const passwordHint = 'login_password_hint';
  static const forgotPasswordButton = 'login_forgotPassword';
  static const logInButton = 'login_logInButton';
  static const orContinueWith = 'auth_orContinueWith';
  static const googleButton = 'auth_googleButton';
  static const appleButton = 'auth_appleButton';
  static const dontHaveAccount = 'login_dontHaveAccount';
  static const signUp = 'global_signUp';

  // Forgot / reset password
  static const forgotPasswordTitle = 'auth_forgotPassword_title';
  static const forgotPasswordSubtitle = 'auth_forgotPassword_subtitle';
  static const sendResetLinkButton = 'auth_forgotPassword_sendResetLink';
  static const resetLinkSentMessage = 'auth_forgotPassword_linkSent';
  static const backToLoginButton = 'auth_backToLogin';
  static const resetPasswordTitle = 'auth_resetPassword_title';
  static const resetPasswordSubtitle = 'auth_resetPassword_subtitle';
  static const newPasswordLabel = 'auth_resetPassword_newPassword_label';
  static const newPasswordHint = 'auth_resetPassword_newPassword_hint';
  static const confirmPasswordLabel = 'auth_resetPassword_confirmPassword_label';
  static const confirmPasswordHint = 'auth_resetPassword_confirmPassword_hint';
  static const resetPasswordButton = 'auth_resetPassword_button';
  static const resetPasswordSuccess = 'auth_resetPassword_success';
  static const passwordStrengthWeak = 'auth_passwordStrength_weak';
  static const passwordStrengthMedium = 'auth_passwordStrength_medium';
  static const passwordStrengthStrong = 'auth_passwordStrength_strong';

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
