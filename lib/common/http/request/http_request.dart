import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

abstract class HttpRequest<T> {
  /// HTTP method (GET, POST, etc.)
  HttpMethod get method;

  /// Relative API path
  String get path;

  /// Optional request body
  RequestBody? get body => null;

  /// Query parameters
  Map<String, dynamic>? get queryParams => null;

  /// Custom headers
  Map<String, String>? get headers => null;

  /// Content type
  ContentType get contentType => ContentType.json;

  /// Override base URL if needed
  String? get overrideBaseUrl => null;

  /// Explicit token (optional)
  String? get overrideToken => null;

  /// Whether Authorization header is required
  bool get requiresAuth => true;

  /// Whether retry is enabled for this request
  bool get isRetryEnabled => false;

  /// Response mapper
  DataMapper<T> get mapper;
}
