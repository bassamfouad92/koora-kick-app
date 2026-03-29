import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/signup/create_account/data/models/register_response.dart';

class RegisterMapper implements DataMapper<RegisterResponse> {
  @override
  RegisterResponse map(dynamic data) => RegisterResponse.fromJson(data as Map<String, dynamic>);
}