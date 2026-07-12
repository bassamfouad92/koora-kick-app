import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:flutter/material.dart';

/// Section heading row with a trailing "See All" action.
class DashboardSectionTitle extends StatelessWidget {
  const DashboardSectionTitle({required this.title, this.onSeeAll, super.key});

  final String title;
  final VoidCallback? onSeeAll;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: context.typo.headingSmall),
          if (onSeeAll != null)
            TextButton(
              onPressed: onSeeAll,
              child: Text(
                DashboardStrings.seeAll.localized(),
                style: context.typo.bodySmall.semiBold
                    .copyWith(color: context.colors.primary),
              ),
            ),
        ],
      );
}
