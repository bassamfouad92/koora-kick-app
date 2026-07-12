// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionResponse _$AuthSessionResponseFromJson(Map<String, dynamic> json) =>
    _AuthSessionResponse(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthSessionResponseToJson(
  _AuthSessionResponse instance,
) => <String, dynamic>{'user': instance.user, 'token': instance.token};
