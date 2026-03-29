import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/profile/data/models/profile_response.dart';

class GetUserProfileRequest extends HttpRequest<ProfileResponse> {
  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/me';

  @override
  DataMapper<ProfileResponse> get mapper => ProfileResponseMapper();
}

class ProfileResponseMapper implements DataMapper<ProfileResponse> {
  @override
  ProfileResponse map(dynamic data) => ProfileResponse.fromJson(data as Map<String, dynamic>);
}