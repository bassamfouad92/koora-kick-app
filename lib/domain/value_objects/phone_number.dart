import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number.freezed.dart';

@freezed
sealed class PhoneNumber with _$PhoneNumber {
  const PhoneNumber._();

  const factory PhoneNumber({
    required String number,
    required String countryCode,
  }) = _PhoneNumber;

  String get fullNumber => '+$countryCode$number';

  @override
  String toString() => fullNumber;
}
