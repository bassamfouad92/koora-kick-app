import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/common/widgets/image/app_image.dart';
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:koora_kick/features/profile/settings/presentation/state/settings_state.dart';
import 'package:koora_kick/app/provider/app_settings_provider.dart';
import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

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
    final themeMode = settings.themeMode;
    final currentLanguage = ref.read(languageNotifierProvider).value ?? AppLanguage.english;

    final sections = [
      SettingsSection(
        title: ProfileStrings.accountSection.localized(),
        items: [
          SettingItem(
            id: 'edit_profile',
            icon: const Icon(Icons.person_outline),
            label: ProfileStrings.editProfile.localized(),
          ),
          SettingItem(
            id: 'account_security',
            icon: const Icon(Icons.security_outlined),
            label: ProfileStrings.accountSecurity.localized(),
          ),
          SettingItem(
            id: 'privacy',
            icon: const Icon(Icons.lock_outline),
            label: ProfileStrings.privacy.localized(),
          ),
        ],
      ),
      SettingsSection(
        title: ProfileStrings.preferencesSection.localized(),
        items: [
          SettingItem(
            id: 'notifications',
            icon: const Icon(Icons.notifications_none_outlined),
            label: ProfileStrings.notifications.localized(),
          ),
          SettingItem(
            id: 'appearance',
            icon: const Icon(Icons.brightness_6_outlined),
            label: ProfileStrings.appearance.localized(),
            trailingText: themeMode == 'dark'
                ? ProfileStrings.dark.localized()
                : ProfileStrings.light.localized(),
          ),
          SettingItem(
            id: 'language',
            icon: const Icon(Icons.language_outlined),
            label: ProfileStrings.settingsLanguage.localized(),
            trailingText: currentLanguage == AppLanguage.english
                ? ProfileStrings.english.localized()
                : ProfileStrings.arabic.localized(),
          ),
        ],
      ),
      SettingsSection(
        title: ProfileStrings.supportSection.localized(),
        items: [
          SettingItem(
            id: 'help_center',
            icon: const Icon(Icons.help_outline),
            label: ProfileStrings.helpCenter.localized(),
          ),
          SettingItem(
            id: 'about',
            icon: const Icon(Icons.info_outline),
            label: ProfileStrings.aboutKoorakick.localized(),
          ),
        ],
      ),
    ];

    state = state.copyWith(
      sections: sections,
      isLoading: false,
    );
  }

  void onItemTapped(BuildContext context, String id) {
    switch (id) {
      case 'language':
        const LanguageRoute().push(context);
        break;
      case 'appearance':
        // TODO: Show theme mode picker
        break;
      case 'edit_profile':
      case 'account_security':
      case 'privacy':
      case 'notifications':
      case 'help_center':
      case 'about':
        // Navigation placeholders
        break;
    }
  }
}
