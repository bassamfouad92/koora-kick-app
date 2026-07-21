import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:flutter/material.dart';

/// Feed header: text logo, notification bell and the headline.
class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                      text: 'Kick',
                      style: TextStyle(color: context.colors.primary),
                    ),
                  ],
                ),
              ),
              const _NotificationBell(),
            ],
          ),
          SizedBox(height: context.dimensions.largeH),
          Text(
            DashboardStrings.whatsHappening.localized(),
            style: context.typo.headingExtraLarge,
          ),
        ],
      );
}

class _NotificationBell extends StatelessWidget {
  const _NotificationBell();

  @override
  Widget build(BuildContext context) => Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(context.dimensions.small),
            decoration: BoxDecoration(
              color: context.colors.surface,
              borderRadius:
                  BorderRadius.circular(context.dimensions.radiusMedium),
            ),
            child: Icon(
              Icons.notifications_none_rounded,
              color: context.colors.textPrimary,
              size: context.dimensions.iconSizeMedium,
            ),
          ),
          // Static badge until the notifications API is available.
          Positioned(
            top: -4,
            right: -4,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: context.colors.primary,
                shape: BoxShape.circle,
              ),
              child: Text(
                '3',
                style: context.typo.bodyExtraSmall.bold
                    .copyWith(color: context.colors.buttonPrimaryText),
              ),
            ),
          ),
        ],
      );
}
