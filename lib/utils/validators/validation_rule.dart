abstract class ValidationRule {
  ValidationRule(this.errorMessage);
  final String errorMessage;

  /// Returns an error message if the value is invalid, otherwise returns null.
  String? validate(String value);
}

/// Rule to check if a field is not empty.
class RequiredRule extends ValidationRule {
  RequiredRule({String? message}) : super(message ?? 'This field is required');

  @override
  String? validate(String value) => value.isEmpty ? errorMessage : null;
}

/// Rule to check for a minimum character length.
class MinLengthRule extends ValidationRule {

  MinLengthRule(this.minLength, {String? message})
      : super(message ?? 'Must be at least $minLength characters');
  final int minLength;

  @override
  String? validate(String value) => value.length < minLength ? errorMessage : null;
}

/// Rule to check for a valid email address.
class EmailRule extends ValidationRule {
  EmailRule({String? message}) : super(message ?? 'Enter a valid email address');

  static final _emailRegex = RegExp(r'^[\w.+-]+@[\w-]+(\.[\w-]+)+$');

  @override
  String? validate(String value) =>
      _emailRegex.hasMatch(value) ? null : errorMessage;
}

/// Rule accepting either a valid email address or a phone number.
class EmailOrPhoneRule extends ValidationRule {
  EmailOrPhoneRule({String? message})
      : super(message ?? 'Enter a valid email or phone number');

  static final _phoneRegex = RegExp(r'^\+?[0-9]{7,15}$');

  @override
  String? validate(String value) {
    final isEmail = EmailRule._emailRegex.hasMatch(value);
    final isPhone = _phoneRegex.hasMatch(value.replaceAll(' ', ''));
    return (isEmail || isPhone) ? null : errorMessage;
  }
}