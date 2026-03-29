// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountriesResponse _$CountriesResponseFromJson(Map<String, dynamic> json) =>
    _CountriesResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CountryData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CountriesResponseToJson(_CountriesResponse instance) =>
    <String, dynamic>{'data': instance.data};

_CountryData _$CountryDataFromJson(Map<String, dynamic> json) => _CountryData(
  id: json['_id'] as String?,
  code: json['code'] as String?,
  name: json['name'] as String?,
  phoneCode: json['phone_code'] as String?,
  active: json['active'] as bool?,
  flag: json['flag'] as String?,
);

Map<String, dynamic> _$CountryDataToJson(_CountryData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'phone_code': instance.phoneCode,
      'active': instance.active,
      'flag': instance.flag,
    };
