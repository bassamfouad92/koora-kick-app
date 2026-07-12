import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/authentication/data/mappers/auth_session_mapper.dart';
import 'package:koora_kick/features/authentication/data/response/auth_session_response.dart';

class RegisterRequest extends HttpRequest<AuthSessionResponse> {

  RegisterRequest({
    required this.name,
    required this.email,
    required this.password,
  });
  final String name;
  final String email;
  final String password;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/auth/register';

  @override
  RequestBody? get body => _RegisterRequestBody(name, email, password);

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<AuthSessionResponse> get mapper => AuthSessionMapper();
}

class _RegisterRequestBody implements RequestBody {

  _RegisterRequestBody(this.name, this.email, this.password);
  final String name;
  final String email;
  final String password;

  @override
  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
  };
}
