import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default([]) List<SettingItem> items,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
  }) = _SettingsState;
}

@freezed
sealed class SettingItem with _$SettingItem {
  const factory SettingItem({
    required String id,
    required Widget icon,
    required String label,
    required Object currentValue,
    required List<SettingOption> options,
  }) = _SettingItem;
}

@freezed
sealed class SettingOption with _$SettingOption {
  const factory SettingOption({
    required Object value,
    required String label,
  }) = _SettingOption;
}

enum TimeFormat {
  h12('12h'),
  h24('24h');

  final String value;
  const TimeFormat(this.value);

  static TimeFormat fromString(String value) {
    return TimeFormat.values.firstWhere(
      (e) => e.value == value,
      orElse: () => TimeFormat.h12,
    );
  }
}

enum DistanceUnit {
  km('km'),
  miles('miles');

  final String value;
  const DistanceUnit(this.value);

  static DistanceUnit fromString(String value) {
    return DistanceUnit.values.firstWhere(
      (e) => e.value == value,
      orElse: () => DistanceUnit.km,
    );
  }
}
