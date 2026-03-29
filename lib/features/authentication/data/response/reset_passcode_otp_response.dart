import 'package:koora_kick/common/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_passcode_otp_response.freezed.dart';
part 'reset_passcode_otp_response.g.dart';

@freezed
sealed class ResetPasscodeOtpResponse with _$ResetPasscodeOtpResponse {
  const factory ResetPasscodeOtpResponse({
    required Token token,
  }) = _ResetPasscodeOtpResponse;

  factory ResetPasscodeOtpResponse.fromJson(Map<String, dynamic> json) => _$ResetPasscodeOtpResponseFromJson(json);
}