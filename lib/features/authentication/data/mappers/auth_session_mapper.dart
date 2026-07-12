import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/authentication/data/response/auth_session_response.dart';

class AuthSessionMapper implements DataMapper<AuthSessionResponse> {
  @override
  AuthSessionResponse map(dynamic data) =>
      AuthSessionResponse.fromJson(data as Map<String, dynamic>);
}
