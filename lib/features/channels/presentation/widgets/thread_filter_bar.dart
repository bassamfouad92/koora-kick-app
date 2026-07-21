import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:koora_kick/features/channels/presentation/state/channel_detail_state.dart';
import 'package:flutter/material.dart';

/// "All Threads / Popular / Recent" filter row above the threads list.
class ThreadFilterBar extends StatelessWidget {
  const ThreadFilterBar({
    required this.selected,
    required this.onChanged,
    super.key,
  });

  final ThreadFilter selected;
  final ValueChanged<ThreadFilter> onChanged;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          for (final filter in ThreadFilter.values) ...[
            _FilterChip(
              label: _labelFor(filter),
              isSelected: selected == filter,
              onTap: () => onChanged(filter),
            ),
            SizedBox(width: context.dimensions.smallW),
          ],
        ],
      );

  String _labelFor(ThreadFilter filter) => switch (filter) {
        ThreadFilter.all => ChannelsStrings.filterAll.localized(),
        ThreadFilter.popular => ChannelsStrings.filterPopular.localized(),
        ThreadFilter.recent => ChannelsStrings.filterRecent.localized(),
      };
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusXLarge);

    return Material(
      color: isSelected ? context.colors.primary : context.colors.surface,
      borderRadius: radius,
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.dimensions.mediumW,
            vertical: context.dimensions.xSmallH,
          ),
          child: Text(
            label,
            style: context.typo.bodySmall.semiBold.copyWith(
              color: isSelected ? context.colors.buttonPrimaryText : context.colors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
