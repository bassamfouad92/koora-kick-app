import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/authentication/data/response/login_response.dart';

class LoginRequest extends HttpRequest<LoginResponse> {

  LoginRequest({
    required this.phoneNumber,
    required this.passcode,
  });
  final String phoneNumber;
  final String passcode;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/login';

  @override
  RequestBody? get body => _LoginRequestBody(phoneNumber, passcode);

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<LoginResponse> get mapper => _LoginResponseMapper();
}

class _LoginRequestBody implements RequestBody {

  _LoginRequestBody(this.phoneNumber, this.passcode);
  final String phoneNumber;
  final String passcode;

  @override
  Map<String, dynamic> toJson() => {
    'phone': phoneNumber,
    'pin': passcode,
  };
}

class _LoginResponseMapper implements DataMapper<LoginResponse> {
  @override
  LoginResponse map(dynamic data) => LoginResponse.fromJson(data as Map<String, dynamic>);
}
