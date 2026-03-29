import 'package:flutter/foundation.dart';

@immutable
class ProfileStrings {
  const ProfileStrings._();
  
  // Profile Screen
  static const logout = 'profile_logout';
  static const appVersion = 'profile_app_version';
  
  // Profile Menu Items
  static const language = 'profile_language';
  static const appPreferences = 'profile_app_preferences';
  static const helpSupport = 'profile_help_support';
  
  // Language
  static const english = 'profile_language_english';
  static const arabic = 'profile_language_arabic';

  // Settings Screen
  static const timeFormat = 'profile_settings_time_format';
  static const confirmSettings = 'profile_settings_confirm_settings';
  static const h12 = 'profile_settings_12h';
  static const h24 = 'profile_settings_24h';
  static const themeMode = 'profile_settings_theme_mode';
  static const light = 'profile_settings_light';
  static const dark = 'profile_settings_dark';

  // Language Screen
  static const selectLanguage = 'profile_language_select_title';
  static const selectLanguageButton = 'profile_language_select_button';
}
