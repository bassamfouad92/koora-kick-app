import 'package:koora_kick/common/extensions/string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  const User._();
  const factory User({
    String? id,
    String? name,
    String? email,
    @Default('') String phone,
    bool? verified,
    bool? active,
    String? picture,
    @Default(false) bool emailVerified,
    String? photo,
    String? provider,
    String? role,
    String? countryId,
    String? cityId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String get firstName => name?.splitString ?? '';
  String get maskedPhone => '+${phone.maskPhone}';
  String get phoneNumber => phone;
  String? get avatarUrl => photo ?? picture;
}
