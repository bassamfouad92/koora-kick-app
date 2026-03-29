import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_account_form_errors.freezed.dart';

@freezed
sealed class CreateAccountFormErrors with _$CreateAccountFormErrors {
  const CreateAccountFormErrors._(); // Private constructor for custom getters

  const factory CreateAccountFormErrors({
    String? phoneNumber,
    String? name,
    String? city,
    String? passcode,
    String? confirmPasscode,
  }) = _CreateAccountFormErrors;

  factory CreateAccountFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.key: e.message};
    return CreateAccountFormErrors(
      phoneNumber: mapped['phone'],
      name: mapped['name'],
      city: mapped['city'],
      passcode: mapped['passcode'],
    );
  }

  bool get isValid =>
      phoneNumber == null &&
      name == null &&
      city == null &&
      passcode == null &&
      confirmPasscode == null;
}