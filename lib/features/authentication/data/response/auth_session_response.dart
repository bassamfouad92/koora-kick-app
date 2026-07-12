import 'package:koora_kick/common/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_session_response.freezed.dart';
part 'auth_session_response.g.dart';

/// Shared `data` payload of register / login / social-callback endpoints:
/// `{ "user": { ... }, "token": "eyJ..." }`
@freezed
sealed class AuthSessionResponse with _$AuthSessionResponse {
  const factory AuthSessionResponse({
    required User user,
    required String token,
  }) = _AuthSessionResponse;

  factory AuthSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionResponseFromJson(json);
}
