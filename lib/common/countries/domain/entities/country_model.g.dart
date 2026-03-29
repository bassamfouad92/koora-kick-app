// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryModel _$CountryModelFromJson(
  Map<String, dynamic> json,
) => _CountryModel(
  name: json['name'] as String,
  flag: json['flag'] as String,
  code: json['code'] as String,
  countryCode: json['countryCode'] as String,
  id: json['id'] as String? ?? '',
  imageType:
      $enumDecodeNullable(_$ImageTypeEnumMap, json['imageType']) ??
      ImageType.asset,
  exampleNumberMobileNational: json['exampleNumberMobileNational'] as String?,
  exampleNumberFixedLineNational:
      json['exampleNumberFixedLineNational'] as String?,
  phoneMaskMobileNational: json['phoneMaskMobileNational'] as String?,
  phoneMaskFixedLineNational: json['phoneMaskFixedLineNational'] as String?,
  exampleNumberMobileInternational:
      json['exampleNumberMobileInternational'] as String?,
  exampleNumberFixedLineInternational:
      json['exampleNumberFixedLineInternational'] as String?,
  phoneMaskMobileInternational: json['phoneMaskMobileInternational'] as String?,
  phoneMaskFixedLineInternational:
      json['phoneMaskFixedLineInternational'] as String?,
);

Map<String, dynamic> _$CountryModelToJson(
  _CountryModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'flag': instance.flag,
  'code': instance.code,
  'countryCode': instance.countryCode,
  'id': instance.id,
  'imageType': _$ImageTypeEnumMap[instance.imageType]!,
  'exampleNumberMobileNational': instance.exampleNumberMobileNational,
  'exampleNumberFixedLineNational': instance.exampleNumberFixedLineNational,
  'phoneMaskMobileNational': instance.phoneMaskMobileNational,
  'phoneMaskFixedLineNational': instance.phoneMaskFixedLineNational,
  'exampleNumberMobileInternational': instance.exampleNumberMobileInternational,
  'exampleNumberFixedLineInternational':
      instance.exampleNumberFixedLineInternational,
  'phoneMaskMobileInternational': instance.phoneMaskMobileInternational,
  'phoneMaskFixedLineInternational': instance.phoneMaskFixedLineInternational,
};

const _$ImageTypeEnumMap = {
  ImageType.asset: 'asset',
  ImageType.network: 'network',
  ImageType.file: 'file',
  ImageType.memory: 'memory',
  ImageType.avatar: 'avatar',
};
