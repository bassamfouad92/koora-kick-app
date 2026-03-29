import 'dart:convert';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/utils/platform_type.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:koora_kick/common/storage/cache_store.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';

part 'app_settings_store.freezed.dart';

part 'app_settings_store.g.dart';

@freezed
sealed class AppSettingsData with _$AppSettingsData {
  const factory AppSettingsData({
    @Default(false) bool biometricEnabled,
    @Default(true) bool isFirstTimeLogin,
    @Default('12h') String timeFormat,
    @Default('km') String distanceUnit,
    @Default('light') String themeMode,
  }) = _AppSettings;

  factory AppSettingsData.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

final appSettingsStoreProvider = Provider(AppSettingsStore.new);

class AppSettingsStore implements CacheStore<AppSettingsData> {
  AppSettingsStore(this._ref);

  final Ref _ref;
  late final PlatformType _platform = _ref.read(platformTypeProvider);
  late final SharedPreferences _prefs = _ref.read(sharedPreferencesProvider);
  static const _key = 'cached_app_settings';
  
  FlutterSecureStorage get _storage => const FlutterSecureStorage();

  @override
  Future<void> save(AppSettingsData item) async {
    final jsonString = jsonEncode(item.toJson());

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      await _storage.write(key: _key, value: jsonString);
    } else {
      await _prefs.setString(_key, jsonString);
    }
  }

  @override
  Future<AppSettingsData?> fetch() async {
    try {
      String? data;

      if (_platform == PlatformType.iOS ||
          _platform == PlatformType.android ||
          _platform == PlatformType.linux) {
        data = await _storage.read(key: _key);
      } else {
        data = _prefs.getString(_key);
      }

      if (data == null) return null;
      return AppSettingsData.fromJson(jsonDecode(data) as Map<String, dynamic>);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> remove() async {
    
    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      await _storage.delete(key: _key);
    } else {
      await _prefs.remove(_key);
    }
  }

  Future<bool> isBiometricEnrolled() async {
    final settings = await fetch();
    return settings?.biometricEnabled ?? false;
  }

  Future<void> setBiometricEnrollment(bool enabled) async {
    final current = await fetch() ?? const AppSettingsData();
    await save(current.copyWith(biometricEnabled: enabled));
  }

  Future<bool> isFirstTimeLogin() async {
    final settings = await fetch();
    return settings?.isFirstTimeLogin ?? true;
  }

  Future<void> setFirstTimeLogin(bool isFirstTime) async {
    final current = await fetch() ?? const AppSettingsData();
    await save(current.copyWith(isFirstTimeLogin: isFirstTime));
  }

  Future<String> getTimeFormat() async {
    final settings = await fetch();
    return settings?.timeFormat ?? '12h';
  }

  Future<void> setTimeFormat(String format) async {
    final current = await fetch() ?? const AppSettingsData();
    await save(current.copyWith(timeFormat: format));
  }

  Future<String> getDistanceUnit() async {
    final settings = await fetch();
    return settings?.distanceUnit ?? 'km';
  }

  Future<void> setDistanceUnit(String unit) async {
    final current = await fetch() ?? const AppSettingsData();
    await save(current.copyWith(distanceUnit: unit));
  }
}
