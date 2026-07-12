import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class ResetPasswordRequest extends HttpRequest<void> {
  ResetPasswordRequest({
    required this.token,
    required this.password,
  });

  /// 64-char hex token from the reset email deep link.
  final String token;
  final String password;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/auth/reset-password';

  @override
  RequestBody? get body => _ResetPasswordRequestBody(token, password);

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<void> get mapper => _VoidMapper();
}

class _ResetPasswordRequestBody implements RequestBody {
  _ResetPasswordRequestBody(this.token, this.password);
  final String token;
  final String password;

  @override
  Map<String, dynamic> toJson() => {
    'token': token,
    'password': password,
  };
}

class _VoidMapper implements DataMapper<void> {
  @override
  void map(dynamic json) {}
}
