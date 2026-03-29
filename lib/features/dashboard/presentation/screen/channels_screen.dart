import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_typography.dart';

class ChannelsScreen extends StatelessWidget {
  const ChannelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KooraKickPageBuilder.noAppBar().scrollable().content(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: context.dimensions.medium),
            child: Text(
              'Community Hub',
              style: context.typo.headingLarge.semiBold,
            ),
          ),
          const _ChannelSection(
            title: 'Top Clubs',
            clubs: [
              {'name': 'Al-Hilal', 'desc': 'Official channel for the leaders'},
              {'name': 'Al-Nassr', 'desc': 'The Knights of Najd'},
              {'name': 'Al-Ahli', 'desc': 'The Royal Club'},
            ],
          ),
          const SizedBox(height: 24),
          const _ChannelSection(
            title: 'City Updates',
            clubs: [
              {'name': 'Khobar Feed', 'desc': 'Everything about Khobar stadiums'},
              {'name': 'Riyadh Hub', 'desc': 'Latest news from the capital'},
            ],
          ),
        ],
      ),
    );
  }
}

class _ChannelSection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> clubs;

  const _ChannelSection({required this.title, required this.clubs});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.typo.bodyLarge.semiBold),
        const SizedBox(height: 12),
        ...clubs.map((club) => Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: context.colors.divider),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: context.colors.primary.withOpacity(0.1),
                child: Text(club['name']![0], style: TextStyle(color: context.colors.primary)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(club['name']!, style: context.typo.bodyMedium.semiBold),
                    Text(club['desc']!, style: context.typo.bodySmall.withColor(context.colors.textSecondary)),
                  ],
                ),
              ),
              AppButton.primary(
                'Join',
                onPressed: () {},
              ).copyWith(
                height: 32,
              ).withHorizontalPadding(16.0),
            ],
          ),
        )),
      ],
    );
  }
}
