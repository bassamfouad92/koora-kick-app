import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  // Shell branch order: 0 home, 1 channels, 2 map, 3 live, 4 profile.
  // Live has no tab of its own — it is reached from the feed launcher.
  static const _homeBranch = 0;
  static const _channelsBranch = 1;
  static const _mapBranch = 2;
  static const _profileBranch = 4;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.transparent,
        body: navigationShell,
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: context.colors.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, -5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                context,
                index: _homeBranch,
                icon: Icons.home_rounded,
                label: DashboardStrings.tabHome.localized(),
              ),
              _buildNavItem(
                context,
                index: _channelsBranch,
                icon: Icons.groups_rounded,
                label: DashboardStrings.tabChannels.localized(),
              ),
              _buildNavItem(
                context,
                index: _mapBranch,
                icon: Icons.location_on_outlined,
                activeIcon: Icons.location_on,
                label: DashboardStrings.tabMap.localized(),
              ),
              _buildNavItem(
                context,
                index: _profileBranch,
                icon: Icons.person_outline_rounded,
                activeIcon: Icons.person_rounded,
                label: DashboardStrings.tabProfile.localized(),
              ),
            ],
          ),
        ),
      );

  Widget _buildNavItem(
    BuildContext context, {
    required int index,
    required IconData icon,
    required String label,
    IconData? activeIcon,
  }) {
    final isSelected = navigationShell.currentIndex == index;
    return Expanded(
      child: InkWell(
        onTap: () => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSelected ? (activeIcon ?? icon) : icon,
              color: isSelected
                  ? context.colors.primary
                  : context.colors.textSecondary,
              size: context.dimensions.iconSizeMedium,
            ),
            SizedBox(height: context.dimensions.xSmallH),
            Text(
              label,
              style: (isSelected
                      ? context.typo.bodyExtraSmall.bold
                      : context.typo.bodyExtraSmall)
                  .copyWith(
                color: isSelected
                    ? context.colors.primary
                    : context.colors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
