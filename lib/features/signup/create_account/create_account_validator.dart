import 'package:koora_kick/features/signup/create_account/state/create_account_form_errors.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_state.dart';
import 'package:koora_kick/utils/validators/form_validator.dart';
import 'package:koora_kick/utils/validators/phone_number_validator.dart';
import 'package:koora_kick/utils/validators/validation_rule.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_account_validator.g.dart';

@riverpod
CreateAccountValidator createAccountValidator(CreateAccountValidatorRef ref) {
  final phoneValidator = ref.watch(phoneNumberValidatorProvider);
  return CreateAccountValidator(phoneValidator);
}

class CreateAccountValidator {

  CreateAccountValidator(this._phoneValidator);
  final PhoneNumberValidator _phoneValidator;

  Future<CreateAccountFormErrors> validate(CreateAccountState state) async {
    String? phoneNumberError = FormValidator.validate(state.phoneNumber.number, [
      RequiredRule(message: 'Phone number cannot be empty.'),
      //MinLengthRule(9, message: 'Please enter a valid phone number.'),
    ]);

    if (phoneNumberError == null) {
      final isPhoneValid = await _phoneValidator.isValid(
        state.phoneNumber.number,
        regionCode: state.country.countryCode,
      );

      if (!isPhoneValid) {
        phoneNumberError = 'Invalid phone number';
      }
    }

    final nameError = FormValidator.validate(state.fullName, [
      RequiredRule(message: 'Name cannot be empty.'),
    ]);

    final cityError = FormValidator.validate(state.selectedCity.name, [
      RequiredRule(message: 'City cannot be empty.'),
    ]);

    final passcodeError = FormValidator.validate(state.passcode, [
      RequiredRule(message: 'Passcode cannot be empty.'),
      MinLengthRule(4, message: 'Passcode must be at least 4 digits.'),
    ]);

    String? confirmPasscodeError = FormValidator.validate(state.confirmPasscode, [
      RequiredRule(message: 'Please confirm your passcode.'),
    ]);

    if (confirmPasscodeError == null && state.passcode != state.confirmPasscode) {
      confirmPasscodeError = 'Passcodes do not match.';
    }

    return CreateAccountFormErrors(
      phoneNumber: phoneNumberError,
      name: nameError,
      city: cityError,
      passcode: passcodeError,
      confirmPasscode: confirmPasscodeError,
    );
  }
}

