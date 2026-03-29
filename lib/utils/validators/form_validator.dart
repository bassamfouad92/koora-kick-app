import 'package:koora_kick/utils/validators/validation_rule.dart';

class FormValidator {
  static String? validate(String value, List<ValidationRule> rules) {
    for (final rule in rules) {
      final error = rule.validate(value);
      if (error != null) {
        return error;
      }
    }
    return null;
  }
}