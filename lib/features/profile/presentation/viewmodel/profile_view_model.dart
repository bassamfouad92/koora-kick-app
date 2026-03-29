import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/common/widgets/image/app_image.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_menu_item.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_state.dart';
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_view_model.g.dart';

@riverpod
class ProfileViewModel extends _$ProfileViewModel {
  @override
  ProfileState build() {
    final sessionAsync = ref.watch(userSessionServiceProvider);

    final status = sessionAsync.when(
      data: (session) => session.maybeMap(
        authenticated: (s) => ProfileStatus.success(s.user),
        orElse: () => const ProfileStatus.loading(),
      ),
      loading: () => const ProfileStatus.loading(),
      error: (error, _) =>
          ProfileStatus.error(AppError.api(message: error.toString())),
    );

    final languageAsync = ref.watch(languageNotifierProvider);
    final currentLanguage = languageAsync.value ?? AppLanguage.english;

    return ProfileState(
      status: status,
      menuItems: _buildMenuItems(
        currentLanguage,
      ),
    );
  }

  List<ProfileMenuItem> _buildMenuItems(
    AppLanguage currentLanguage,
  ) => [
    ProfileMenuItem(
      icon: const AppImage(
  source: AppAssets.icGlobe,
  type: ImageType.asset,
  ),
      title: ProfileStrings.language,
      type: ProfileMenuItemType.language,
      trailingText: currentLanguage == AppLanguage.english
          ? ProfileStrings.english
          : ProfileStrings.arabic,
      trailingTextColor: const Color(0xFF64748B),
    ),
    const ProfileMenuItem(
      icon: AppImage(
    source: AppAssets.icSettings,
  type: ImageType.asset,
  ),
      title: ProfileStrings.appPreferences,
      type: ProfileMenuItemType.appPreferences,
    ),
    const ProfileMenuItem(
      icon: AppImage(
      source: AppAssets.icHelp,
  type: ImageType.asset,
  ),
      title: ProfileStrings.helpSupport,
      type: ProfileMenuItemType.helpSupport,
    ),
  ];

  void logout() {
    ref.read(userSessionServiceProvider.notifier).logout();
  }
}
