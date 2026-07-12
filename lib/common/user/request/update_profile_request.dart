import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/common/user/request/get_user_profile_request.dart';

/// `PATCH /users/profile` — all fields optional, at least one required.
class UpdateProfileRequest extends HttpRequest<User> {
  UpdateProfileRequest({
    this.name,
    this.photoUrl,
    this.countryId,
    this.cityId,
    this.token,
  });

  final String? name;
  final String? photoUrl;
  final String? countryId;
  final String? cityId;

  /// Explicit token for calls made right after register/login, before the
  /// session token is persisted.
  final String? token;

  @override
  HttpMethod get method => HttpMethod.patch;

  @override
  String get path => '/users/profile';

  @override
  String? get overrideToken => token;

  @override
  RequestBody? get body => _UpdateProfileRequestBody(
        name: name,
        photoUrl: photoUrl,
        countryId: countryId,
        cityId: cityId,
      );

  @override
  DataMapper<User> get mapper => UserProfileMapper();
}

class _UpdateProfileRequestBody implements RequestBody {
  _UpdateProfileRequestBody({
    this.name,
    this.photoUrl,
    this.countryId,
    this.cityId,
  });

  final String? name;
  final String? photoUrl;
  final String? countryId;
  final String? cityId;

  @override
  Map<String, dynamic> toJson() => {
        if (name != null) 'name': name,
        if (photoUrl != null) 'photoUrl': photoUrl,
        if (countryId != null) 'countryId': countryId,
        if (cityId != null) 'cityId': cityId,
      };
}
