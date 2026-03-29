// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitiesResponse _$CitiesResponseFromJson(Map<String, dynamic> json) =>
    _CitiesResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => City.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CitiesResponseToJson(_CitiesResponse instance) =>
    <String, dynamic>{'data': instance.data};

_City _$CityFromJson(Map<String, dynamic> json) => _City(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'active': instance.active,
};
