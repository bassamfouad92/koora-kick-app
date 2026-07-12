import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/common/user/model/user.dart';

class GetUserProfileRequest extends HttpRequest<User> {
  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/users/profile';

  @override
  DataMapper<User> get mapper => UserProfileMapper();
}

class UserProfileMapper implements DataMapper<User> {
  @override
  User map(dynamic data) => User.fromJson(data as Map<String, dynamic>);
}
