import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_section_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// "Popular Club Channels" horizontal carousel.
class DashboardChannelsSection extends StatelessWidget {
  const DashboardChannelsSection({required this.channels, super.key});

  final List<ChannelModel> channels;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashboardSectionTitle(
            title: DashboardStrings.popularClubChannels.localized(),
            onSeeAll: () => context.go('/channels'),
          ),
          SizedBox(height: context.dimensions.smallH),
          SizedBox(
            height: context.dimensions.h(120),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: channels.length,
              separatorBuilder: (_, __) =>
                  SizedBox(width: context.dimensions.smallW),
              itemBuilder: (context, index) =>
                  _ChannelCard(channel: channels[index]),
            ),
          ),
        ],
      );
}

class _ChannelCard extends StatelessWidget {
  const _ChannelCard({required this.channel});

  final ChannelModel channel;

  /// 18700 -> "18.7K", 34200000 -> "34.2M".
  String _formatMembers(int count) {
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    }
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }
    return '$count';
  }

  @override
  Widget build(BuildContext context) {
    final logo = channel.logo;

    return Container(
      width: context.dimensions.w(100),
      padding: EdgeInsets.all(context.dimensions.small),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(context.dimensions.radiusLarge),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (logo != null && logo.isNotEmpty)
            AppImage.network(logo)
                .setDimension(width: 44, height: 44)
                .setStyle(const AppImageStyle.circular(fit: BoxFit.cover))
                .setErrorWidget(_shieldPlaceholder(context))
                .build()
          else
            _shieldPlaceholder(context),
          SizedBox(height: context.dimensions.smallH),
          Text(
            channel.name,
            style: context.typo.bodySmall.semiBold,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: context.dimensions.xSmallH),
          Text(
            '${_formatMembers(channel.memberCount)} '
            '${DashboardStrings.members.localized()}',
            style: context.typo.bodyExtraSmall
                .copyWith(color: context.colors.textSecondary),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _shieldPlaceholder(BuildContext context) => Icon(
        Icons.shield_outlined,
        size: 44,
        color: context.colors.primary,
      );
}
