import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'jwt_parser_service.g.dart';

abstract interface class JwtParserService {
  User? parseUser(String token);

  /// Expiration check
  bool isExpired(String token);
}

@riverpod
JwtParserService jwtParserService(JwtParserServiceRef ref) => JwtParserServiceImpl();

class JwtParserServiceImpl implements JwtParserService {
  @override
  User? parseUser(String token) {
    try {
      final payload = JwtDecoder.decode(token);
      final userMap = payload['user'] as Map<String, dynamic>?;
      return userMap.let(User.fromJson, orElse: () => null);
    } catch (e) {
      return null;
    }
  }

  @override
  bool isExpired(String token) => JwtDecoder.isExpired(token);
}