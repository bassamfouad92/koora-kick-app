import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:flutter/material.dart';

class KooraMapScreen extends StatelessWidget {
  const KooraMapScreen({super.key});

  @override
  Widget build(BuildContext context) => KooraKickPageBuilder.noAppBar()
      .centered()
      .content(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.stadium_rounded,
              size: 80,
              color: context.colors.primary.withOpacity(0.5),
            ),
            const SizedBox(height: 16),
            Text(
              'KooraMap',
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
      );
}
