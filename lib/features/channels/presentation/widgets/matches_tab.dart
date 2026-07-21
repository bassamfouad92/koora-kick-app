import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:flutter/material.dart';

/// Placeholder until a channel-scoped matches API is available.
class MatchesTab extends StatelessWidget {
  const MatchesTab({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          ChannelsStrings.noMatchesYet.localized(),
          style: context.typo.bodyMedium
              .copyWith(color: context.colors.textSecondary),
        ),
      );
}
