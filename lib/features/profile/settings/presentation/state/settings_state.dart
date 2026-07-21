import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default([]) List<SettingsSection> sections,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
  }) = _SettingsState;
}

@freezed
sealed class SettingsSection with _$SettingsSection {
  const factory SettingsSection({
    required String title,
    required List<SettingItem> items,
  }) = _SettingsSection;
}

@freezed
sealed class SettingItem with _$SettingItem {
  const factory SettingItem({
    required String id,
    required Widget icon,
    required String label,
    String? trailingText,
  }) = _SettingItem;
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
