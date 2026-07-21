import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:flutter/material.dart';

/// Channel card in the Channels grid: banner + logo, name with a verified
/// badge, "Official Channel" label, member count, and a Join/Joined pill.
///
/// Note: the API has no banner image, "verified/official" flag, or member
/// avatars — the banner is a themed gradient and the official/verified
/// treatment is a static design element applied to every channel.
class ChannelGridCard extends StatelessWidget {
  const ChannelGridCard({
    required this.channel,
    required this.isJoinBusy,
    required this.onToggleJoin,
    required this.onTap,
    super.key,
  });

  final ChannelModel channel;
  final bool isJoinBusy;
  final VoidCallback onToggleJoin;
  final VoidCallback onTap;

  String _formatMembers(int count) {
    if (count >= 1000000) return '${(count / 1000000).toStringAsFixed(1)}M';
    if (count >= 1000) return '${(count / 1000).toStringAsFixed(0)}K';
    return '$count';
  }

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusLarge);

    return Material(
      color: context.colors.surface,
      borderRadius: radius,
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: radius,
            border: Border.all(color: context.colors.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _banner(context),
              Padding(
                padding: EdgeInsets.all(context.dimensions.small),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _nameRow(context),
                    SizedBox(height: context.dimensions.xSmallH),
                    Text(
                      ChannelsStrings.official.localized(),
                      style: context.typo.bodyExtraSmall
                          .copyWith(color: context.colors.primary),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: context.dimensions.xSmallH),
                    Text(
                      '${_formatMembers(channel.memberCount)} '
                      '${ChannelsStrings.members.localized()}',
                      style: context.typo.bodyExtraSmall
                          .copyWith(color: context.colors.textSecondary),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: context.dimensions.smallH),
                    _joinButton(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _banner(BuildContext context) {
    final logo = channel.logo;
    return SizedBox(
      height: context.dimensions.h(72),
      child: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(context.dimensions.radiusLarge),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  context.colors.primary.withOpacity(0.25),
                  context.colors.surface,
                ],
              ),
            ),
          ),
          Center(
            child: (logo != null && logo.isNotEmpty)
                ? AppImage.network(logo)
                    .setDimension(width: 40, height: 40)
                    .setStyle(const AppImageStyle(fit: BoxFit.contain))
                    .setErrorWidget(_logoFallback(context))
                    .build()
                : _logoFallback(context),
          ),
        ],
      ),
    );
  }

  Widget _logoFallback(BuildContext context) => Icon(
        Icons.shield_outlined,
        size: 40,
        color: context.colors.primary,
      );

  Widget _nameRow(BuildContext context) => Row(
        children: [
          Flexible(
            child: Text(
              channel.name,
              style: context.typo.bodyMedium.semiBold,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: context.dimensions.xSmallW),
          Icon(Icons.verified, size: 14, color: context.colors.primary),
        ],
      );

  Widget _joinButton(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusXLarge);
    final isJoined = channel.isJoined;

    return Material(
      color: isJoined ? Colors.transparent : context.colors.primary,
      borderRadius: radius,
      child: InkWell(
        onTap: isJoinBusy ? null : onToggleJoin,
        borderRadius: radius,
        child: Container(
          height: context.dimensions.h(34),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: radius,
            border: isJoined ? Border.all(color: context.colors.primary) : null,
          ),
          child: isJoinBusy
              ? SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: context.colors.primary,
                  ),
                )
              : Text(
                  (isJoined ? ChannelsStrings.joined : ChannelsStrings.join)
                      .localized(),
                  style: context.typo.bodySmall.semiBold.copyWith(
                    color: isJoined
                        ? context.colors.primary
                        : context.colors.buttonPrimaryText,
                  ),
                ),
        ),
      ),
    );
  }
}
