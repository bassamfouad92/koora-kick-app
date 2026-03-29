import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/verification/otp/data/response/verify_otp_response.dart';

class VerifyOtpResponseMapper implements DataMapper<VerifyOtpResponse> {
  @override
  VerifyOtpResponse map(dynamic data) => VerifyOtpResponse.fromJson(data as Map<String, dynamic>);
}
