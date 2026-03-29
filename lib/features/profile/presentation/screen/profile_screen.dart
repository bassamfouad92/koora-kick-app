import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/common/widgets/decoration/slanted_header.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_menu_item.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_state.dart';
import 'package:koora_kick/features/profile/presentation/viewmodel/profile_view_model.dart';
import 'package:koora_kick/features/profile/presentation/widgets/profile_info_widget.dart';
import 'package:koora_kick/features/profile/presentation/widgets/profile_item.dart';
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileViewModelProvider);

    return Scaffold(
      backgroundColor: context.colors.surface,
      body: _buildBody(context, ref, state),
      bottomNavigationBar: _buildAppVersion(context),
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref, ProfileState state) {
    final gradient = context.colors.backgrounds.splash.when(
      solid: (c) => null,
      gradient: (g) => g,
      appImage: (i) => null,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlantedHeader(
            gradient: gradient,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  context.dimensions.pagePadding,
                  context.dimensions.h(40),
                  context.dimensions.pagePadding,
                  context.dimensions.largeH,
                ),
                child: switch (state.status) {
                  ProfileSuccess(:final profile) => _buildProfileInfo(
                    context,
                    profile,
                  ),
                  ProfileLoading() => const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                  ProfileError() => _buildProfileInfo(
                    context,
                    const User(name: '--', email: '', phone: ''),
                    showDetails: false,
                  ),
                },
              ),
            ),
          ),
          SizedBox(height: context.dimensions.largeH),
          _buildSectionList(context, state.menuItems),
          _buildLogoutButton(context, ref),
        ],
      ),
    );
  }

  Widget _buildProfileInfo(
    BuildContext context,
    User profile, {
    bool showDetails = true,
  }) {
    var widget = ProfileInfoWidget.builder(profile)
        .orientation(type: ProfileInfoOrientation.vertical)
        .withImage(size: context.dimensions.h(64))
        .withSpacing(context.dimensions.mediumH)
        .withName(type: ProfileNameType.fullname)
        .withMaxLines(2)
        .centered();

    if (!showDetails) {
      widget = (widget as ProfileInfoWidget).hideDetails();
    }
    return widget;
  }

  Widget _buildSectionList(
    BuildContext context,
    List<ProfileMenuItem> menuItems,
  ) => Column(
    children: [
      for (var i = 0; i < menuItems.length; i++) ...[
        GestureDetector(
          onTap: () => _handleMenuItemTap(context, menuItems[i].type),
          child: ProfileItem(item: menuItems[i]),
        ),
        if (i < menuItems.length - 1)
          Divider(
            height: 1,
            indent: context.dimensions.mediumW,
            endIndent: context.dimensions.mediumW,
            color: context.colors.divider,
          ),
      ],
    ],
  );

  void _handleMenuItemTap(BuildContext context, ProfileMenuItemType type) {
    switch (type) {
      case ProfileMenuItemType.language:
        const LanguageRoute().push(context);
        break;
      case ProfileMenuItemType.appPreferences:
        const SettingsRoute().push(context);
        break;
      case ProfileMenuItemType.helpSupport:
        // TODO: Navigate to help & support
        break;
    }
  }

  Widget _buildLogoutButton(BuildContext context, WidgetRef ref) =>
      Text(
            ProfileStrings.logout.localized(),
            style: context.typo.bodyMedium.medium.withColor(
              context.colors.primary,
            ),
          )
          .withSymmetricPadding(
            horizontal: context.dimensions.pagePadding,
            vertical: context.dimensions.pageTopPadding,
          )
          .onTap(() => ref.read(profileViewModelProvider.notifier).logout());

  Widget _buildAppVersion(BuildContext context) => Text(
    'App version 1.0.1 (Build 1)',
    style: context.typo.bodyMedium.copyWith(color: context.colors.textTertiary),
  ).withSymmetricPadding(horizontal: context.dimensions.pagePadding, vertical: context.dimensions.pagePadding);
}
