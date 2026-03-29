import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/http/request/request_body.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class CreateNewPasscodeRequest extends HttpRequest<void> {
  CreateNewPasscodeRequest({
    required this.passcode,
    required this.confirm,
    required this.token,
  });

  final String passcode;
  final String confirm;
  final String token;

  @override
  HttpMethod get method => HttpMethod.patch;

  @override
  String get path => '/pin';

  @override
  RequestBody? get body => _CreateNewPasscodeRequestBody(passcode, confirm);

  @override
  bool get requiresAuth => true;

  @override
  String? get overrideToken => token;

  @override
  DataMapper<void> get mapper => _CreateNewPasscodeMapper();
}

class _CreateNewPasscodeMapper implements DataMapper<void> {
  @override
  void map(dynamic json) {}
}

class _CreateNewPasscodeRequestBody implements RequestBody {
  _CreateNewPasscodeRequestBody(this.passcode, this.confirm);

  final String passcode;
  final String confirm;

  @override
  Map<String, dynamic> toJson() => {
    'confirm_pin': confirm,
    'pin': passcode,
  };
}