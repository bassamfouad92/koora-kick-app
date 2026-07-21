import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:flutter/material.dart';

/// Full hero content shown when the channel header is expanded: logo,
/// name, member count and the join/joined pill.
class ChannelHeroHeader extends StatelessWidget {
  const ChannelHeroHeader({
    required this.channel,
    required this.isJoinBusy,
    required this.onToggleJoin,
    super.key,
  });

  final ChannelModel channel;
  final bool isJoinBusy;
  final VoidCallback onToggleJoin;

  String _formatMembers(int count) {
    if (count >= 1000000) return '${(count / 1000000).toStringAsFixed(1)}M';
    if (count >= 1000) return '${(count / 1000).toStringAsFixed(1)}K';
    return '$count';
  }

  @override
  Widget build(BuildContext context) {
    final logo = channel.logo;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.dimensions.medium,
        vertical: context.dimensions.smallH,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (logo != null && logo.isNotEmpty)
            AppImage.network(logo)
                .setDimension(width: 56, height: 56)
                .setStyle(const AppImageStyle.circular(fit: BoxFit.cover))
                .setErrorWidget(_shieldPlaceholder(context))
                .build()
          else
            _shieldPlaceholder(context),
          SizedBox(width: context.dimensions.mediumW),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  channel.name,
                  style: context.typo.headingMedium
                      .copyWith(color: context.colors.textPrimary),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: context.dimensions.xSmallH),
                Text(
                  '${_formatMembers(channel.memberCount)} '
                  '${ChannelsStrings.members.localized()}',
                  style: context.typo.bodySmall
                      .copyWith(color: context.colors.textSecondary),
                ),
              ],
            ),
          ),
          SizedBox(width: context.dimensions.smallW),
          _JoinPill(
            isJoined: channel.isJoined,
            isBusy: isJoinBusy,
            onTap: onToggleJoin,
          ),
        ],
      ),
    );
  }

  Widget _shieldPlaceholder(BuildContext context) => Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: context.colors.surface,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.shield_outlined, color: context.colors.primary),
      );
}

class _JoinPill extends StatelessWidget {
  const _JoinPill({
    required this.isJoined,
    required this.isBusy,
    required this.onTap,
  });

  final bool isJoined;
  final bool isBusy;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusXLarge);

    return Material(
      color: isJoined ? context.colors.primary.withOpacity(0.12) : context.colors.primary,
      borderRadius: radius,
      child: InkWell(
        onTap: isBusy ? null : onTap,
        borderRadius: radius,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.dimensions.mediumW,
            vertical: context.dimensions.smallH,
          ),
          child: isBusy
              ? SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: isJoined ? context.colors.primary : context.colors.buttonPrimaryText,
                  ),
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isJoined) ...[
                      Icon(
                        Icons.check,
                        size: 16,
                        color: context.colors.primary,
                      ),
                      SizedBox(width: context.dimensions.xSmallW),
                    ],
                    Text(
                      (isJoined
                              ? ChannelsStrings.joined
                              : ChannelsStrings.join)
                          .localized(),
                      style: context.typo.bodySmall.semiBold.copyWith(
                        color: isJoined
                            ? context.colors.primary
                            : context.colors.buttonPrimaryText,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
