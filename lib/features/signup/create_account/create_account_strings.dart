import 'package:flutter/foundation.dart';

@immutable
class CreateAccountStrings {
  const CreateAccountStrings._();

  static const createYourAccountTitle = 'signup_createYourAccount_title';
  static const createAccountSubtitle = 'signup_subtitle';
  static const fullNameLabel = 'signup_fullName_label';
  static const fullNameHint = 'signup_fullName_hint';
  static const emailLabel = 'signup_email_label';
  static const emailHint = 'signup_email_hint';
  static const phoneNumberLabel = 'global_phone_number';
  static const passwordLabel = 'global_password';
  static const passwordHint = 'signup_password_hint';
  static const agreePrefix = 'signup_agreePrefix';
  static const agreeToTermsRequired = 'signup_agreeToTerms_required';
  static const signUpButton = 'global_signUp';
  static const alreadyHaveAccount = 'signup_alreadyHaveAccount';
  static const logIn = 'global_login';

  // Location selection
  static const countryLabel = 'global_country';
  static const selectYourCountry = 'signup_selectYourCountry';
  static const selectCountryFirst = 'signup_selectCountryFirst';
  static const cityLabel = 'global_city';
  static const selectYourCity = 'profile_select_your_city';
  static const selectCity = 'profile_select_city';
  static const searchCity = 'profile_search_city';
  static const noCityFound = 'global_no_city_found';

  // Legacy passcode flow (still used by create_new_passcode_screen).
  static const globalPasscode = 'global_passcode';
  static const globalConfirmPasscode = 'global_confirm_passcode';
}
