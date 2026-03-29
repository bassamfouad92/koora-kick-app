import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/common/user/mapper/user_mapper.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/signup/create_account/data/mappers/register_mapper.dart';
import 'package:koora_kick/features/signup/create_account/data/models/register_response.dart';

class RegisterRequest extends HttpRequest<RegisterResponse> {

  RegisterRequest({
    required this.phoneNumber,
    required this.name,
    required this.city,
    required this.passcode,
  });
  final String phoneNumber;
  final String name;
  final String city;
  final String passcode;

  @override
  HttpMethod get method => HttpMethod.post;

  @override
  String get path => '/register';

  @override
  RequestBody? get body => _RegisterRequestBody(phoneNumber, name, city, passcode);

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<RegisterResponse> get mapper => RegisterMapper();
}

class _RegisterRequestBody implements RequestBody {

  _RegisterRequestBody(this.phoneNumber, this.name, this.city, this.passcode);
  final String phoneNumber;
  final String name;
  final String city;
  final String passcode;

  @override
  Map<String, dynamic> toJson() => {
    'phone': phoneNumber,
    'name': name,
    'city': city,
    'pin': passcode,
  };
}
