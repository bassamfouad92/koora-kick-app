import 'package:koora_kick/common/errors/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koora_kick/common/http/api_error_item.dart';

part 'create_new_passcode_state.freezed.dart';

@freezed
sealed class CreateNewPasscodeStatus with _$CreateNewPasscodeStatus {
  const factory CreateNewPasscodeStatus.initial() = _Initial;
  const factory CreateNewPasscodeStatus.loading() = _Loading;
  const factory CreateNewPasscodeStatus.error(AppError error) = _Error;
  const factory CreateNewPasscodeStatus.success() = _Success;
}

@freezed
sealed class CreateNewPasscodeFormErrors with _$CreateNewPasscodeFormErrors {
  const CreateNewPasscodeFormErrors._();

  const factory CreateNewPasscodeFormErrors({
    @Default(null) String? passcode,
    @Default(null) String? confirmPasscode,
  }) = _CreateNewPasscodeFormErrors;

  factory CreateNewPasscodeFormErrors.fromApi(List<APIErrorItem> errors) {
    final mapped = {for (final e in errors) e.key: e.message};
    return CreateNewPasscodeFormErrors(
      passcode: mapped['passcode'],
      confirmPasscode: mapped['confirm'],
    );
  }

  bool get isValid => passcode == null && confirmPasscode == null;
}

@freezed
sealed class CreateNewPasscodeState with _$CreateNewPasscodeState {
  const CreateNewPasscodeState._();

  const factory CreateNewPasscodeState({
    @Default(CreateNewPasscodeStatus.initial()) CreateNewPasscodeStatus status,
    @Default('') String passcode,
    @Default('') String confirmPasscode,
    @Default(CreateNewPasscodeFormErrors()) CreateNewPasscodeFormErrors formErrors,
  }) = _CreateNewPasscodeState;
}
