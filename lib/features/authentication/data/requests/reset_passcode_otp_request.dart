import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/authentication/data/response/reset_passcode_otp_response.dart';

class ResetPasscodeOtpRequest extends HttpRequest<ResetPasscodeOtpResponse> {
  ResetPasscodeOtpRequest({required this.phone});
  final String phone;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/reset-password/otp';

  @override
  RequestBody? get body => _ResetPasscodeOtpRequestBody(phone);

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<ResetPasscodeOtpResponse> get mapper => _ResetPasscodeOtpMapper();
}

class _ResetPasscodeOtpMapper implements DataMapper<ResetPasscodeOtpResponse> {
  @override
  ResetPasscodeOtpResponse map(dynamic json) => ResetPasscodeOtpResponse.fromJson(json);
}

class _ResetPasscodeOtpRequestBody implements RequestBody {
  _ResetPasscodeOtpRequestBody(this.phone);

  final String phone;

  @override
  Map<String, dynamic> toJson() => {
    'phone': phone,
  };
}