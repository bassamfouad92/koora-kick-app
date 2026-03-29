// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityModel _$CityModelFromJson(Map<String, dynamic> json) => _CityModel(
  id: json['_id'] as String,
  name: json['name'] as String,
  active: json['active'] as bool? ?? true,
  isSelected: json['isSelected'] as bool? ?? false,
);

Map<String, dynamic> _$CityModelToJson(_CityModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'isSelected': instance.isSelected,
    };
