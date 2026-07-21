import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:flutter/material.dart';

/// Keeps the channel's tab bar pinned right below the collapsing header.
class ChannelTabBarDelegate extends SliverPersistentHeaderDelegate {
  ChannelTabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) =>
      Container(
        color: context.colors.backgrounds.scaffold.maybeColor ?? context.colors.surface,
        child: tabBar,
      );

  @override
  bool shouldRebuild(covariant ChannelTabBarDelegate oldDelegate) =>
      oldDelegate.tabBar != tabBar;
}
