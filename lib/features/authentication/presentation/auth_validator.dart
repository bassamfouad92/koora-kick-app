import 'package:koora_kick/features/authentication/presentation/states/login_state.dart';
import 'package:koora_kick/utils/validators/form_validator.dart';
import 'package:koora_kick/utils/validators/phone_number_validator.dart';
import 'package:koora_kick/utils/validators/validation_rule.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_validator.g.dart';

@riverpod
AuthValidator authValidator(AuthValidatorRef ref) {
  final phoneValidator = ref.watch(phoneNumberValidatorProvider);
  return AuthValidator(phoneValidator);
}

class AuthValidator {
  AuthValidator(this._phoneValidator);
  final PhoneNumberValidator _phoneValidator;

  Future<LoginFormErrors> validate(LoginState state) async {
    String? phoneNumberError = FormValidator.validate(state.phoneNumber.number, [
        RequiredRule(message: 'Phone number cannot be empty.'),
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

    final passcodeError = FormValidator.validate(state.passcode, [
      RequiredRule(message: 'Passcode cannot be empty.'),
      MinLengthRule(4, message: 'Passcode must be at least 4 digits.'),
    ]);

    return LoginFormErrors(
      phoneNumber: phoneNumberError,
      passcode: passcodeError,
    );
  }
}
