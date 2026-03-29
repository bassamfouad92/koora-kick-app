import 'package:koora_kick/common/extensions/null_check.dart';

extension HeaderBuilder on Map<String, String> {
  Map<String, String> attachBearerTokenIf(String? token, {bool override = true}) {
    if (token.isPresent) {
      if (override || !containsKey('Authorization')) {
        this['Authorization'] = 'Bearer $token';
      }
    }
    return this;
  }
}