// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_APIErrorItem _$APIErrorItemFromJson(Map<String, dynamic> json) =>
    _APIErrorItem(
      message: json['message'] as String,
      key: json['key'] as String?,
      value: json['value'] as String?,
      schema: json['schema'] as String?,
    );

Map<String, dynamic> _$APIErrorItemToJson(_APIErrorItem instance) =>
    <String, dynamic>{
      'message': instance.message,
      'key': instance.key,
      'value': instance.value,
      'schema': instance.schema,
    };
