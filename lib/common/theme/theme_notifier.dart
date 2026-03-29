
import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/app/provider/app_settings_provider.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:koora_kick/common/theme/app_theme_manager.dart';
import 'package:koora_kick/common/theme/app_theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends Notifier<ThemeData> {
  AppThemeMode _currentMode = const AppThemeMode.light();
  AppThemeMode get currentMode => _currentMode;

  @override
  ThemeData build() {
    final language = ref.watch(languageNotifierProvider).value ?? AppLanguage.english;
    final settings = ref.watch(appSettingsNotifierProvider).valueOrNull;
    final mode = settings?.themeMode ?? 'light';

    final languageCode = language.code;
    
    if (mode == 'dark') {
      _currentMode = const AppThemeMode.dark();
      return AppThemeManager.withDark(languageCode: languageCode).build();
    } else {
      _currentMode = const AppThemeMode.light();
      return AppThemeManager.withLight(languageCode: languageCode).build();
    }
  }

  void setRamadanTheme() {
    final language = ref.read(languageNotifierProvider).value ?? AppLanguage.english;
    state = AppThemeManager.withLight(languageCode: language.code).withRamadanMode(languageCode: language.code).build();
  }

  // Helper to toggle via Settings
  Future<void> toggleDark() async {
    final settingsNotifier = ref.read(appSettingsNotifierProvider.notifier);
    final currentSettings = ref.read(appSettingsNotifierProvider).valueOrNull;
    if (currentSettings != null) {
      final newMode = currentSettings.themeMode == 'dark' ? 'light' : 'dark';
      await settingsNotifier.updateSettings(currentSettings.copyWith(themeMode: newMode));
    }
  }
}
final themeProvider = NotifierProvider<ThemeNotifier, ThemeData>(ThemeNotifier.new);
