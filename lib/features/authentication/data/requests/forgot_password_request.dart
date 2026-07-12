import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class ForgotPasswordRequest extends HttpRequest<void> {
  ForgotPasswordRequest({required this.email});
  final String email;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/auth/forgot-password';

  @override
  RequestBody? get body => _ForgotPasswordRequestBody(email);

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<void> get mapper => _VoidMapper();
}

class _ForgotPasswordRequestBody implements RequestBody {
  _ForgotPasswordRequestBody(this.email);
  final String email;

  @override
  Map<String, dynamic> toJson() => {'email': email};
}

class _VoidMapper implements DataMapper<void> {
  @override
  void map(dynamic json) {}
}
