import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';

part 'reset_passcode_state.freezed.dart';

@freezed
sealed class ResetPasscodeStatus with _$ResetPasscodeStatus {
  const factory ResetPasscodeStatus.initial() = _Initial;
  const factory ResetPasscodeStatus.loading() = _Loading;
  const factory ResetPasscodeStatus.error(AppError error) = _Error;
  const factory ResetPasscodeStatus.success({required Token token}) = _Success;
}

@freezed
sealed class ResetPasscodeFormErrors with _$ResetPasscodeFormErrors {
  const ResetPasscodeFormErrors._();

  const factory ResetPasscodeFormErrors({
    @Default(null) String? phoneNumber,
  }) = _ResetPasscodeFormErrors;

  factory ResetPasscodeFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.key: e.message};
    return ResetPasscodeFormErrors(
      phoneNumber: mapped['phone'],
    );
  }

  bool get isValid => phoneNumber == null;
}

@freezed
sealed class ResetPasscodeState with _$ResetPasscodeState {
  const ResetPasscodeState._();

  const factory ResetPasscodeState({
    @Default(ResetPasscodeStatus.initial()) ResetPasscodeStatus status,
    @Default(PhoneNumber(number: '', countryCode: '20')) PhoneNumber phoneNumber,
    @Default(CountryModel.defaultCountry) CountryModel country,
    @Default(ResetPasscodeFormErrors()) ResetPasscodeFormErrors formErrors,
  }) = _ResetPasscodeState;
}
