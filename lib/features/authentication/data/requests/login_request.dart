import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/authentication/data/mappers/auth_session_mapper.dart';
import 'package:koora_kick/features/authentication/data/response/auth_session_response.dart';

class LoginRequest extends HttpRequest<AuthSessionResponse> {

  LoginRequest({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/auth/login';

  @override
  RequestBody? get body => _LoginRequestBody(email, password);

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<AuthSessionResponse> get mapper => AuthSessionMapper();
}

class _LoginRequestBody implements RequestBody {

  _LoginRequestBody(this.email, this.password);
  final String email;
  final String password;

  @override
  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
  };
}
