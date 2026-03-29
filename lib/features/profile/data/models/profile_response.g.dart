// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      id: json['_id'] as String,
      picture: json['picture'] as String?,
      rating: (json['rating'] as num).toDouble(),
      documentVerificationStatus:
          json['document_verification_status'] as String,
      phone: json['phone'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'picture': instance.picture,
      'rating': instance.rating,
      'document_verification_status': instance.documentVerificationStatus,
      'phone': instance.phone,
      'name': instance.name,
    };
