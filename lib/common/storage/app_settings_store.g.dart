// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => _AppSettings(
  biometricEnabled: json['biometricEnabled'] as bool? ?? false,
  isFirstTimeLogin: json['isFirstTimeLogin'] as bool? ?? true,
  timeFormat: json['timeFormat'] as String? ?? '12h',
  distanceUnit: json['distanceUnit'] as String? ?? 'km',
  themeMode: json['themeMode'] as String? ?? 'light',
);

Map<String, dynamic> _$AppSettingsToJson(_AppSettings instance) =>
    <String, dynamic>{
      'biometricEnabled': instance.biometricEnabled,
      'isFirstTimeLogin': instance.isFirstTimeLogin,
      'timeFormat': instance.timeFormat,
      'distanceUnit': instance.distanceUnit,
      'themeMode': instance.themeMode,
    };
