import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/config/env.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/authentication/data/requests/social_auth_callback_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'social_auth_service.g.dart';

@riverpod
SocialAuthService socialAuthService(SocialAuthServiceRef ref) =>
    SocialAuthService(ref);

/// Handles Google / Apple sign-in against the KooraKick backend.
///
/// The backend exposes a browser OAuth flow (`GET /auth/google`) whose
/// callback (`GET /auth/callback/<provider>`) responds with the same
/// `user` + `token` payload as login/register. [signIn] exchanges the
/// callback for a session; [launchConsentPage] opens the provider's
/// consent page in the external browser when a full OAuth round trip
/// is required.
class SocialAuthService {
  SocialAuthService(this._ref);

  final Ref _ref;

  late final AuthRepositoryImp _authRepository =
      _ref.read(authRepositoryProvider);
  late final UserSessionService _sessionService =
      _ref.read(userSessionServiceProvider.notifier);

  /// Calls the backend OAuth callback URL for [provider] and, on success,
  /// stores the returned token as the active session.
  Future<Result<UserSessionStatus>> signIn(
    SocialAuthProvider provider, {
    Map<String, dynamic>? callbackParams,
  }) async {
    final result = await _authRepository.socialLogin(
      provider,
      callbackParams: callbackParams,
    );

    return result.when(
      success: (session) async {
        final status =
            await _sessionService.saveToken(session.token, user: session.user);
        return Result.success(status);
      },
      error: (exception) async => Result.error(exception),
    );
  }

  /// Opens the provider's OAuth consent page in the external browser.
  /// The backend redirects back to `/auth/callback/<provider>` once the
  /// user approves access.
  Future<bool> launchConsentPage(SocialAuthProvider provider) {
    final uri = Uri.parse('${Env.apiUrl}/auth/${provider.id}');
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
