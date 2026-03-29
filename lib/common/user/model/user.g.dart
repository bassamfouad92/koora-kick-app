// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Token _$TokenFromJson(Map<String, dynamic> json) => _Token(
  raw: json['raw'] as String?,
  iat: (json['iat'] as num?)?.toInt(),
  exp: (json['exp'] as num?)?.toInt(),
  jti: json['jti'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  aud: json['aud'] as String?,
  userType: json['userType'] as String?,
);

Map<String, dynamic> _$TokenToJson(_Token instance) => <String, dynamic>{
  'raw': instance.raw,
  'iat': instance.iat,
  'exp': instance.exp,
  'jti': instance.jti,
  'user': instance.user,
  'aud': instance.aud,
  'userType': instance.userType,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String,
  verified: json['verified'] as bool?,
  active: json['active'] as bool?,
  picture: json['picture'] as String?,
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  documentVerificationStatus: json['document_verification_status'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'verified': instance.verified,
  'active': instance.active,
  'picture': instance.picture,
  'rating': instance.rating,
  'document_verification_status': instance.documentVerificationStatus,
};
