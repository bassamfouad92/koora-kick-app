import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/common/user/model/user.dart';

class UserMapper implements DataMapper<User> {
  @override
  User map(dynamic data) => User.fromJson(data as Map<String, dynamic>);
}
