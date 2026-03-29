import 'package:koora_kick/common/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.freezed.dart';
part 'verify_otp_response.g.dart';

@freezed
sealed class VerifyOtpResponse with _$VerifyOtpResponse {
  const factory VerifyOtpResponse({
    required Token token,
  }) = _VerifyOtpResponse;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) => _$VerifyOtpResponseFromJson(json);
}
