// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) =>
    _ChannelModel(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      logo: json['logo'] as String?,
      type: json['type'] as String?,
      countryId: json['countryId'] as String?,
      cityId: json['cityId'] as String?,
      memberCount: (json['memberCount'] as num?)?.toInt() ?? 0,
      isJoined: json['isJoined'] as bool? ?? false,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$ChannelModelToJson(_ChannelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'logo': instance.logo,
      'type': instance.type,
      'countryId': instance.countryId,
      'cityId': instance.cityId,
      'memberCount': instance.memberCount,
      'isJoined': instance.isJoined,
      'isSelected': instance.isSelected,
    };
