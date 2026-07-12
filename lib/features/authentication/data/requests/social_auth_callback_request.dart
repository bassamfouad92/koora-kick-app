import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/authentication/data/mappers/auth_session_mapper.dart';
import 'package:koora_kick/features/authentication/data/response/auth_session_response.dart';

enum SocialAuthProvider {
  google('google'),
  apple('apple');

  const SocialAuthProvider(this.id);
  final String id;
}

/// Exchanges the OAuth consent result for a KooraKick session
/// (`GET /auth/callback/<provider>` returns the same `user` + `token`
/// payload as login/register).
class SocialAuthCallbackRequest extends HttpRequest<AuthSessionResponse> {
  SocialAuthCallbackRequest({
    required this.provider,
    this.callbackParams,
  });

  final SocialAuthProvider provider;

  /// Query parameters forwarded from the OAuth redirect (code, state, ...).
  final Map<String, dynamic>? callbackParams;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/auth/callback/${provider.id}';

  @override
  Map<String, dynamic>? get queryParams => callbackParams;

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<AuthSessionResponse> get mapper => AuthSessionMapper();
}
