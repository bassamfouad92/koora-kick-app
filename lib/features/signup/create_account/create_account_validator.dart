import 'package:koora_kick/features/signup/create_account/create_account_strings.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_form_errors.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_state.dart';
import 'package:koora_kick/utils/validators/form_validator.dart';
import 'package:koora_kick/utils/validators/phone_number_validator.dart';
import 'package:koora_kick/utils/validators/validation_rule.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_account_validator.g.dart';

@riverpod
CreateAccountValidator createAccountValidator(CreateAccountValidatorRef ref) => CreateAccountValidator();

class CreateAccountValidator {

  Future<CreateAccountFormErrors> validate(CreateAccountState state) async {
    final nameError = FormValidator.validate(state.fullName, [
      RequiredRule(message: 'Name cannot be empty.'),
    ]);

    final emailError = FormValidator.validate(state.email.trim(), [
      RequiredRule(message: 'Email cannot be empty.'),
      EmailRule(),
    ]);

    final passwordError = FormValidator.validate(state.password, [
      RequiredRule(message: 'Password cannot be empty.'),
      MinLengthRule(8, message: 'Password must be at least 8 characters.'),
    ]);

    final countryError =
        state.selectedLocationCountry == null ? 'Please select your country.' : null;

    final cityError = state.selectedCity == null ? 'Please select your city.' : null;

    final termsError = state.agreedToTerms
        ? null
        : CreateAccountStrings.agreeToTermsRequired.localized();

    return CreateAccountFormErrors(
      name: nameError,
      email: emailError,
      password: passwordError,
      country: countryError,
      city: cityError,
      terms: termsError,
    );
  }
}
