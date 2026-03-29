import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final ProfileMenuItem item;

  const ProfileItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) => Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.dimensions.pagePadding,
        vertical: context.dimensions.mediumH,
      ),
      child: Row(
        children: [
          IconTheme(
            data: IconThemeData(
              color: context.colors.textPrimary,
              size: context.dimensions.largeH,
            ),
            child: item.icon,
          ),
          SizedBox(width: context.dimensions.mediumW),
          Expanded(
            child: Text(
              item.title.localized(),
              style: context.typo.bodyMedium.medium
            ),
          ),
          if (item.trailingText != null) ...[
            SizedBox(width: context.dimensions.smallW),
            _buildTrailing(context),
          ],
          SizedBox(width: context.dimensions.smallW),
          Icon(
            Icons.chevron_right,
            color: context.colors.textPrimary,
            size: 24,
          ),
        ],
      ),
    );

  Widget _buildTrailing(BuildContext context) =>
      item.trailingBackgroundColor.let(
        (it) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: it,
            borderRadius: BorderRadius.circular(context.dimensions.radiusXSmall),
          ),
          child: _buildTrailingText(context),
        ),
        orElse: () => _buildTrailingText(context),
      );

  Widget _buildTrailingText(BuildContext context) => Text(
        item.trailingText!.localized(),
        style: context.typo.bodySmall.copyWith(
          color: item.trailingTextColor ?? context.colors.textSecondary,
        ),
      );
}
