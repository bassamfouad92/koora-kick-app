import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

/// Selectable pill chip used for topic/tag pickers.
/// Selected: primary background with inverse text; unselected: surface
/// background with a subtle border.
class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final dimensions = context.dimensions;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(dimensions.radiusXLarge),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        padding: EdgeInsets.symmetric(
          horizontal: dimensions.mediumW,
          vertical: dimensions.smallH,
        ),
        decoration: BoxDecoration(
          color: isSelected ? colors.primary : colors.surface,
          borderRadius: BorderRadius.circular(dimensions.radiusXLarge),
          border: Border.all(
            color: isSelected ? colors.primary : colors.border,
          ),
        ),
        child: Text(
          label,
          style: context.typo.bodyMedium.semiBold.copyWith(
            color: isSelected ? colors.buttonPrimaryText : colors.textPrimary,
          ),
        ),
      ),
    );
  }
}
