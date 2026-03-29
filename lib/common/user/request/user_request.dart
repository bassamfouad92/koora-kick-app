import 'package:koora_kick/common/http/request/http_request.dart';

abstract class UserRequest<T> extends HttpRequest<T> {
  String get pathSuffix;

  @override
  String get path => '/user$pathSuffix';
}


