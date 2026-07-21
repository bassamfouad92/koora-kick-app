import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:flutter/material.dart';

/// Compact header content shown once the channel header collapses:
/// just the channel name and a short "members · Joined" subtitle.
class ChannelCompactHeader extends StatelessWidget {
  const ChannelCompactHeader({required this.channel, super.key});

  final ChannelModel channel;

  String _formatMembers(int count) {
    if (count >= 1000000) return '${(count / 1000000).toStringAsFixed(1)}M';
    if (count >= 1000) return '${(count / 1000).toStringAsFixed(1)}K';
    return '$count';
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(bottom: context.dimensions.smallH),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              channel.name,
              style: context.typo.bodyMedium.semiBold
                  .copyWith(color: context.colors.textPrimary),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '${_formatMembers(channel.memberCount)} '
              '${ChannelsStrings.members.localized()}'
              '${channel.isJoined ? ' · ${ChannelsStrings.joined.localized()}' : ''}',
              style: context.typo.bodyExtraSmall
                  .copyWith(color: context.colors.textSecondary),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
