import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/common/user/model/user.dart';

class TokenMapper implements DataMapper<Token> {
  @override
  Token map(dynamic data) => Token.fromJson(data as Map<String, dynamic>);
}