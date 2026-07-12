import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:koora_kick/features/dashboard/domain/entities/match_model.dart';
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_section_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

/// "Match Updates" cards, refreshed every 60s by the view model.
class DashboardMatchUpdatesSection extends StatelessWidget {
  const DashboardMatchUpdatesSection({required this.matches, super.key});

  final List<MatchModel> matches;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DashboardSectionTitle(
            title: DashboardStrings.matchUpdates.localized(),
            onSeeAll: () => context.go('/live'),
          ),
          SizedBox(height: context.dimensions.smallH),
          if (matches.isEmpty)
            Container(
              padding: EdgeInsets.all(context.dimensions.medium),
              decoration: BoxDecoration(
                color: context.colors.surface,
                borderRadius:
                    BorderRadius.circular(context.dimensions.radiusLarge),
              ),
              child: Text(
                DashboardStrings.noMatches.localized(),
                style: context.typo.bodyMedium
                    .copyWith(color: context.colors.textSecondary),
                textAlign: TextAlign.center,
              ),
            )
          else
            for (final (index, match) in matches.indexed) ...[
              if (index > 0) SizedBox(height: context.dimensions.smallH),
              _MatchCard(match: match),
            ],
        ],
      );
}

class _MatchCard extends StatelessWidget {
  const _MatchCard({required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    final kickoff = match.utcDate?.toLocal();

    return Container(
      padding: EdgeInsets.all(context.dimensions.medium),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(context.dimensions.radiusLarge),
      ),
      child: Column(
        children: [
          Row(
            children: [
              _emblem(context, match.competition?.emblem, size: 20),
              SizedBox(width: context.dimensions.xSmallW),
              Expanded(
                child: Text(
                  match.competition?.name ?? '',
                  style: context.typo.bodySmall
                      .copyWith(color: context.colors.textSecondary),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (kickoff != null)
                Text(
                  '${DashboardStrings.today.localized()} · '
                  '${DateFormat('h:mm a').format(kickoff)}',
                  style: context.typo.bodyExtraSmall
                      .copyWith(color: context.colors.textSecondary),
                ),
              if (match.isLive) ...[
                SizedBox(width: context.dimensions.xSmallW),
                const _LiveBadge(),
              ],
            ],
          ),
          SizedBox(height: context.dimensions.mediumH),
          Row(
            children: [
              Expanded(
                child: _TeamLabel(team: match.homeTeam, alignEnd: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dimensions.medium,
                ),
                child: Text(
                  _scoreText(),
                  style: context.typo.headingMedium,
                ),
              ),
              Expanded(
                child: _TeamLabel(team: match.awayTeam, alignEnd: true),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _scoreText() {
    final fullTime = match.score?.fullTime;
    final home = fullTime?.home;
    final away = fullTime?.away;
    if (home == null || away == null) {
      return '- : -';
    }
    return '$home - $away';
  }

  static Widget _emblem(BuildContext context, String? url, {required double size}) {
    if (url == null || url.isEmpty) {
      return Icon(
        Icons.shield_outlined,
        size: size,
        color: context.colors.primary,
      );
    }
    return AppImage.network(url)
        .setDimension(width: size, height: size)
        .setStyle(const AppImageStyle(fit: BoxFit.contain))
        .setErrorWidget(
          Icon(Icons.shield_outlined, size: size, color: context.colors.primary),
        )
        .build();
  }
}

class _TeamLabel extends StatelessWidget {
  const _TeamLabel({required this.team, required this.alignEnd});

  final MatchTeam? team;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    final crest = _MatchCard._emblem(context, team?.crest, size: 24);
    final name = Flexible(
      child: Text(
        team?.shortName ?? team?.name ?? '',
        style: context.typo.bodyMedium.semiBold,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );

    return Row(
      mainAxisAlignment:
          alignEnd ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (alignEnd) ...[
          name,
          SizedBox(width: context.dimensions.xSmallW),
          crest,
        ] else ...[
          crest,
          SizedBox(width: context.dimensions.xSmallW),
          name,
        ],
      ],
    );
  }
}

class _LiveBadge extends StatelessWidget {
  const _LiveBadge();

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.dimensions.small,
          vertical: context.dimensions.xSmall / 2,
        ),
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: BorderRadius.circular(context.dimensions.radiusSmall),
        ),
        child: Text(
          DashboardStrings.live.localized(),
          style: context.typo.bodyExtraSmall.bold
              .copyWith(color: context.colors.buttonPrimaryText),
        ),
      );
}
