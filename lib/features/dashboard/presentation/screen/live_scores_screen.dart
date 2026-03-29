import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_typography.dart';

class LiveScoresScreen extends StatelessWidget {
  const LiveScoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KooraKickPageBuilder.noAppBar().scrollable().content(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: context.dimensions.medium),
            child: Text(
              'Live Scores & Stats',
              style: context.typo.headingLarge.semiBold,
            ),
          ),
          _buildLiveMatches(context),
          const SizedBox(height: 24),
          _buildLeagueTable(context),
        ],
      ),
    );
  }

  Widget _buildLiveMatches(BuildContext context) {
    final matches = [
      {'home': 'Al-Hilal', 'away': 'Al-Ittihad', 'score': '2 - 1', 'time': "75'"},
      {'home': 'Al-Nassr', 'away': 'Al-Ahli', 'score': '0 - 0', 'time': "15'"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.live_tv_rounded, color: Colors.red, size: 20),
            const SizedBox(width: 8),
            Text('Live Matches', style: context.typo.bodyLarge.semiBold),
          ],
        ),
        const SizedBox(height: 12),
        ...matches.map((match) => Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: context.colors.divider),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTeam(context, match['home']!),
              Column(
                children: [
                   Text(match['score']!, style: context.typo.headingLarge.semiBold),
                   Text(match['time']!, style: context.typo.bodySmall.withColor(Colors.red)),
                ],
              ),
              _buildTeam(context, match['away']!),
            ],
          ),
        )),
      ],
    );
  }

  Widget _buildTeam(BuildContext context, String name) {
    return Column(
      children: [
        CircleAvatar(radius: 20, backgroundColor: context.colors.primary.withOpacity(0.1), child: Text(name[0])),
        const SizedBox(height: 4),
        Text(name, style: context.typo.bodySmall.semiBold),
      ],
    );
  }

  Widget _buildLeagueTable(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Saudi Pro League Standings', style: context.typo.bodyLarge.semiBold),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: context.colors.divider),
          ),
          child: Table(
            columnWidths: const {
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth(),
              2: IntrinsicColumnWidth(),
            },
            children: [
              TableRow(
                children: [
                  Text('#', style: context.typo.bodySmall.semiBold),
                  Text('Team', style: context.typo.bodySmall.semiBold),
                  Text('Points', style: context.typo.bodySmall.semiBold),
                ],
              ),
              _buildTableRow(context, '1', 'Al-Hilal', '24'),
              _buildTableRow(context, '2', 'Al-Nassr', '21'),
              _buildTableRow(context, '3', 'Al-Ahli', '18'),
            ],
          ),
        ),
      ],
    );
  }

  TableRow _buildTableRow(BuildContext context, String pos, String team, String pts) {
    return TableRow(
      children: [
        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(pos, style: context.typo.bodySmall)),
        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(team, style: context.typo.bodySmall.semiBold)),
        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(pts, style: context.typo.bodySmall.semiBold)),
      ],
    );
  }
}
