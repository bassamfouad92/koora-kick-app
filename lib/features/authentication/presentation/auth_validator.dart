import 'package:koora_kick/features/authentication/presentation/states/login_state.dart';
import 'package:koora_kick/utils/validators/form_validator.dart';
import 'package:koora_kick/utils/validators/validation_rule.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_validator.g.dart';

@riverpod
AuthValidator authValidator(AuthValidatorRef ref) => AuthValidator();

class AuthValidator {
  Future<LoginFormErrors> validate(LoginState state) async {
    final emailError = FormValidator.validate(state.email.trim(), [
      RequiredRule(message: 'Email cannot be empty.'),
      EmailOrPhoneRule(),
    ]);

    final passwordError = FormValidator.validate(state.password, [
      RequiredRule(message: 'Password cannot be empty.'),
      MinLengthRule(8, message: 'Password must be at least 8 characters.'),
    ]);

    return LoginFormErrors(
      email: emailError,
      password: passwordError,
    );
  }
}
