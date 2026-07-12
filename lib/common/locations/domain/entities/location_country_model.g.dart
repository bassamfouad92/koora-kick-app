// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationCountryModel _$LocationCountryModelFromJson(
  Map<String, dynamic> json,
) => _LocationCountryModel(
  id: json['id'] as String,
  name: json['name'] as String,
  code: json['code'] as String? ?? '',
  active: json['active'] as bool? ?? true,
  isSelected: json['isSelected'] as bool? ?? false,
);

Map<String, dynamic> _$LocationCountryModelToJson(
  _LocationCountryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'active': instance.active,
  'isSelected': instance.isSelected,
};
