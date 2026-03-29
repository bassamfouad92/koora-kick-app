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