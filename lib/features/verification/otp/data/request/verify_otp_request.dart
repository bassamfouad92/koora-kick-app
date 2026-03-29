import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/verification/otp/data/response/verify_otp_response.dart';
import 'package:koora_kick/features/verification/otp/mappers/VerifyOtpResponseMapper.dart';

class VerifyOtpRequest extends HttpRequest<VerifyOtpResponse> {
  VerifyOtpRequest({required this.code, this.token});

  final String code;
  final String? token;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/verify-otp';

  @override
  bool get requiresAuth => true;

  @override
  String? get overrideToken => token;

  @override
  RequestBody? get body => _VerifyOtpRequestBody(code);

  @override
  DataMapper<VerifyOtpResponse> get mapper => VerifyOtpResponseMapper();
}

class _VerifyOtpRequestBody implements RequestBody {
  _VerifyOtpRequestBody(this.code);
  final String code;

  @override
  Map<String, dynamic> toJson() => {
    'code': code,
  };
}

