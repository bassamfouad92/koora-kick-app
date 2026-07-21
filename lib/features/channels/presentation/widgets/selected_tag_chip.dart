import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

/// A selected hashtag pill with a remove (X) affordance, used in the
/// Create Thread form's tag row.
class SelectedTagChip extends StatelessWidget {
  const SelectedTagChip({required this.tag, required this.onRemove, super.key});

  final String tag;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.dimensions.smallW,
          vertical: context.dimensions.xSmallH,
        ),
        decoration: BoxDecoration(
          color: context.colors.primary.withOpacity(0.12),
          borderRadius: BorderRadius.circular(context.dimensions.radiusXLarge),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '#$tag',
              style: context.typo.bodySmall.semiBold
                  .copyWith(color: context.colors.primary),
            ),
            SizedBox(width: context.dimensions.xSmallW),
            InkWell(
              onTap: onRemove,
              child: Icon(Icons.close, size: 14, color: context.colors.primary),
            ),
          ],
        ),
      );
}
