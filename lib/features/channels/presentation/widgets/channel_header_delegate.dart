import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/features/channels/presentation/widgets/channel_compact_header.dart';
import 'package:koora_kick/features/channels/presentation/widgets/channel_hero_header.dart';
import 'package:flutter/material.dart';

/// Pinned header: a fixed back/notification-bell row, plus a content area
/// that hard-swaps between [ChannelHeroHeader] (expanded) and
/// [ChannelCompactHeader] (collapsed) once scrolled past ~90% of the way —
/// no cross-fade, a deliberate binary state matching the two designs.
class ChannelHeaderDelegate extends SliverPersistentHeaderDelegate {
  ChannelHeaderDelegate({
    required this.channel,
    required this.isJoinBusy,
    required this.onToggleJoin,
    required this.notificationsOn,
    required this.onToggleNotifications,
    required this.onBack,
    required this.expandedExtent,
    required this.collapsedExtent,
  });

  final ChannelModel channel;
  final bool isJoinBusy;
  final VoidCallback onToggleJoin;
  final bool notificationsOn;
  final VoidCallback onToggleNotifications;
  final VoidCallback onBack;
  final double expandedExtent;
  final double collapsedExtent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final collapsed = shrinkOffset > (expandedExtent - collapsedExtent) * 0.9;

    return Container(
      color: context.colors.backgrounds.scaffold.maybeColor ?? context.colors.surface,
      child: Column(
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: context.colors.textPrimary),
                  onPressed: onBack,
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    notificationsOn
                        ? Icons.notifications_active_rounded
                        : Icons.notifications_off_outlined,
                    color: context.colors.textPrimary,
                  ),
                  onPressed: onToggleNotifications,
                ),
              ],
            ),
          ),
          Expanded(
            child: collapsed
                ? ChannelCompactHeader(channel: channel)
                : ChannelHeroHeader(
                    channel: channel,
                    isJoinBusy: isJoinBusy,
                    onToggleJoin: onToggleJoin,
                  ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedExtent;

  @override
  double get minExtent => collapsedExtent;

  @override
  bool shouldRebuild(covariant ChannelHeaderDelegate oldDelegate) =>
      oldDelegate.channel != channel ||
      oldDelegate.isJoinBusy != isJoinBusy ||
      oldDelegate.notificationsOn != notificationsOn ||
      oldDelegate.expandedExtent != expandedExtent ||
      oldDelegate.collapsedExtent != collapsedExtent;
}
