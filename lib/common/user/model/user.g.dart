// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String? ?? '',
  verified: json['verified'] as bool?,
  active: json['active'] as bool?,
  picture: json['picture'] as String?,
  emailVerified: json['emailVerified'] as bool? ?? false,
  photo: json['photo'] as String?,
  provider: json['provider'] as String?,
  role: json['role'] as String?,
  countryId: json['countryId'] as String?,
  cityId: json['cityId'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'verified': instance.verified,
  'active': instance.active,
  'picture': instance.picture,
  'emailVerified': instance.emailVerified,
  'photo': instance.photo,
  'provider': instance.provider,
  'role': instance.role,
  'countryId': instance.countryId,
  'cityId': instance.cityId,
};
