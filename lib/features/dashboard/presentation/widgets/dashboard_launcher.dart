import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Quick-access tiles: KooraMap, Live Screening, Club Channels and News.
class DashboardLauncher extends StatelessWidget {
  const DashboardLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    final tiles = [
      _LauncherTileData(
        icon: Icons.location_on_outlined,
        title: DashboardStrings.kooraMap.localized(),
        subtitle: DashboardStrings.kooraMapSubtitle.localized(),
        onTap: () => context.go('/map'),
      ),
      _LauncherTileData(
        icon: Icons.desktop_windows_outlined,
        title: DashboardStrings.liveScreening.localized(),
        subtitle: DashboardStrings.liveScreeningSubtitle.localized(),
        onTap: () => context.go('/live'),
      ),
      _LauncherTileData(
        icon: Icons.groups_outlined,
        title: DashboardStrings.clubChannels.localized(),
        subtitle: DashboardStrings.clubChannelsSubtitle.localized(),
        onTap: () => context.go('/channels'),
      ),
      _LauncherTileData(
        icon: Icons.newspaper_outlined,
        title: DashboardStrings.news.localized(),
        subtitle: DashboardStrings.newsSubtitle.localized(),
        // News has no destination yet — the API is not available.
        onTap: null,
      ),
    ];

    // IntrinsicHeight + stretch makes every tile match the tallest one,
    // regardless of how many lines its subtitle wraps to.
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final (index, tile) in tiles.indexed) ...[
            if (index > 0) SizedBox(width: context.dimensions.smallW),
            Expanded(child: _LauncherTile(data: tile)),
          ],
        ],
      ),
    );
  }
}

class _LauncherTileData {
  const _LauncherTileData({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
}

class _LauncherTile extends StatelessWidget {
  const _LauncherTile({required this.data});

  final _LauncherTileData data;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusLarge);

    return Material(
      color: context.colors.surface,
      borderRadius: radius,
      child: InkWell(
        onTap: data.onTap,
        borderRadius: radius,
        child: Padding(
          padding: EdgeInsets.all(context.dimensions.small),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(context.dimensions.xSmall),
                decoration: BoxDecoration(
                  color: context.colors.primary.withOpacity(0.15),
                  borderRadius:
                      BorderRadius.circular(context.dimensions.radiusSmall),
                ),
                child: Icon(
                  data.icon,
                  color: context.colors.primary,
                  size: context.dimensions.iconSizeMedium,
                ),
              ),
              SizedBox(height: context.dimensions.smallH),
              Text(
                data.title,
                style: context.typo.bodySmall.semiBold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: context.dimensions.xSmallH),
              Text(
                data.subtitle,
                style: context.typo.bodyExtraSmall
                    .copyWith(color: context.colors.textSecondary),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
