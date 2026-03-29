import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class SentOtpRequest extends HttpRequest<String> {
  SentOtpRequest({this.token});

  final String? token;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/otp';

  @override
  bool get requiresAuth => true;

  @override
  String? get overrideToken => token;

  @override
  DataMapper<String> get mapper => _SentOtpMapper();
}

class _SentOtpMapper implements DataMapper<String> {
  @override
  String map(dynamic json) => json['correlation_id'] ?? '';
}
