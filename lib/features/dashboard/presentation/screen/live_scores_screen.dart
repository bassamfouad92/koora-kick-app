import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:flutter/material.dart';

class LiveScoresScreen extends StatelessWidget {
  const LiveScoresScreen({super.key});

  @override
  Widget build(BuildContext context) => KooraKickPageBuilder.noAppBar()
      .centered()
      .content(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.sports_soccer_rounded,
              size: 80,
              color: context.colors.primary.withOpacity(0.5),
            ),
            const SizedBox(height: 16),
            Text(
              'Live Scores',
              style: context.typo.headingLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Coming Soon',
              style: context.typo.bodyMedium.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
          ],
        ),
      )
      .build(context);
}
