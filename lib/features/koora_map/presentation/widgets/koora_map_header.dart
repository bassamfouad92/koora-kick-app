import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

/// "KooraMap" wordmark (white "Koora" + green "Map") with a notification
/// bell, floating over the top of the map.
class KooraMapHeader extends StatelessWidget {
  const KooraMapHeader({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              style: context.typo.headingLarge.bold,
              children: [
                TextSpan(
                  text: 'Koora',
                  style: TextStyle(color: context.colors.textPrimary),
                ),
                TextSpan(
                  text: 'Map',
                  style: TextStyle(color: context.colors.primary),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(context.dimensions.small),
            decoration: BoxDecoration(
              color: context.colors.surface,
              borderRadius: BorderRadius.circular(context.dimensions.radiusMedium),
            ),
            child: Icon(
              Icons.notifications_none_rounded,
              color: context.colors.textPrimary,
              size: context.dimensions.iconSizeMedium,
            ),
          ),
        ],
      );
}
