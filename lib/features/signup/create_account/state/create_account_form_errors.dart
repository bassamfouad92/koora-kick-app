import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_account_form_errors.freezed.dart';

@freezed
sealed class CreateAccountFormErrors with _$CreateAccountFormErrors {
  const CreateAccountFormErrors._(); // Private constructor for custom getters

  const factory CreateAccountFormErrors({
    String? name,
    String? email,
    String? phoneNumber,
    String? password,
    String? country,
    String? city,
    String? terms,
  }) = _CreateAccountFormErrors;

  factory CreateAccountFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.fieldName: e.message};
    return CreateAccountFormErrors(
      name: mapped['name'],
      email: mapped['email'],
      phoneNumber: mapped['phone'],
      password: mapped['password'],
      country: mapped['countryId'],
      city: mapped['cityId'],
    );
  }

  bool get isValid =>
      name == null &&
      email == null &&
      phoneNumber == null &&
      password == null &&
      country == null &&
      city == null &&
      terms == null;
}
