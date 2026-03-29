import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/features/verification/otp/presentation/view_model/verify_phone_view_model.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_phone_state.freezed.dart';

@freezed
sealed class VerifyPhoneStatus with _$VerifyPhoneStatus {
  const factory VerifyPhoneStatus.initial() = _Initial;
  const factory VerifyPhoneStatus.loading() = _Loading;
  const factory VerifyPhoneStatus.error(AppError error) = _Error;
  const factory VerifyPhoneStatus.verifyOtpSuccess({@Default(false) bool isResetPasscode}) = _VerifyOtpSuccess;
  const factory VerifyPhoneStatus.sendOtpSuccess() = _SendOtpSuccess;
}

@freezed
sealed class VerifyPhoneState with _$VerifyPhoneState {
  const factory VerifyPhoneState({
    required PhoneNumber phoneNumber,

    @Default(VerifyPhoneViewModel.initialCountdown) int secondsRemaining,
    @Default(false) bool canResend,
    @Default(VerifyPhoneStatus.initial()) VerifyPhoneStatus verifyStatus,
    AppError? error,
    @Default(null) String? formError,
  }) = _VerifyPhoneState;
}
