import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_number_validator.g.dart';

abstract class PhoneNumberValidator {
  Future<bool> isValid(String phoneNumber, {required String regionCode});
}

class LibPhoneNumberValidator implements PhoneNumberValidator {
  @override
  Future<bool> isValid(String phoneNumber, {required String regionCode}) async {
    try {
      await parse(phoneNumber, region: regionCode);
      return true;
    } catch (e) {
      return false;
    }
  }
}

@riverpod
PhoneNumberValidator phoneNumberValidator(PhoneNumberValidatorRef ref) => LibPhoneNumberValidator();
