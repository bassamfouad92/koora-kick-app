import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/common/widgets/image/app_image.dart';
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:koora_kick/features/profile/settings/presentation/state/settings_state.dart';
import 'package:koora_kick/app/provider/app_settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_view_model.g.dart';

@riverpod
class SettingsViewModel extends _$SettingsViewModel {
  late final AppSettingsStore _store;

  @override
  SettingsState build() {
    _store = ref.read(appSettingsStoreProvider);
    _loadSettings();
    return const SettingsState(isLoading: true);
  }

  Future<void> _loadSettings() async {
    final settings = await _store.fetch() ?? const AppSettingsData();
    final timeFormat = settings.timeFormat;
    final themeMode = settings.themeMode;

    final items = [
      SettingItem(
        id: 'time_format',
        icon: const Icon(Icons.access_time),
        label: ProfileStrings.timeFormat.localized(),
        currentValue: TimeFormat.fromString(timeFormat),
        options: [
          SettingOption(value: TimeFormat.h12, label: ProfileStrings.h12.localized()),
          SettingOption(value: TimeFormat.h24, label: ProfileStrings.h24.localized()),
        ],
      ),
      SettingItem(
        id: 'theme_mode',
        icon: const Icon(Icons.brightness_6),
        label: ProfileStrings.themeMode.localized(),
        currentValue: themeMode,
        options: [
          SettingOption(value: 'light', label: ProfileStrings.light.localized()),
          SettingOption(value: 'dark', label: ProfileStrings.dark.localized()),
        ],
      ),
    ];

    state = state.copyWith(
      items: items,
      isLoading: false,
    );
  }

  void updateSetting(String id, dynamic value) {
    state = state.copyWith(
      items: state.items.map((item) {
        if (item.id == id) {
          return item.copyWith(currentValue: value);
        }
        return item;
      }).toList(),
    );
  }

  Future<void> saveSettings() async {
    state = state.copyWith(isSaving: true);
    
    var timeFormat = '12h';
    var themeMode = 'light';

    for (final item in state.items) {
      if (item.id == 'time_format') {
        final val = item.currentValue as TimeFormat;
        timeFormat = val.value;
      } else if (item.id == 'theme_mode') {
        themeMode = item.currentValue as String;
      }
    }

    final current = await _store.fetch() ?? const AppSettingsData();
    final updated = current.copyWith(
      timeFormat: timeFormat,
      themeMode: themeMode,
    );

    await ref.read(appSettingsNotifierProvider.notifier).updateSettings(updated);

    state = state.copyWith(isSaving: false);
  }
}
