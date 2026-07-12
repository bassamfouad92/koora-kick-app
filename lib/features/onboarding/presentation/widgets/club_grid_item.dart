import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

/// Selectable club card for the onboarding interests grid:
/// logo, club name, and a check badge when selected.
class ClubGridItem extends StatelessWidget {
  const ClubGridItem({
    super.key,
    required this.club,
    required this.isSelected,
    required this.onTap,
  });

  final ChannelModel club;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final dimensions = context.dimensions;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(dimensions.radiusLarge),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            curve: Curves.easeOut,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: dimensions.mediumH,
              horizontal: dimensions.smallW,
            ),
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(dimensions.radiusLarge),
              border: Border.all(
                color: isSelected ? colors.primary : colors.border,
                width: isSelected ? 1.5 : 1,
              ),
            ),
            child: [
              _logo(context),
              Text(
                club.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: context.typo.bodySmall.semiBold.copyWith(
                  color: colors.textPrimary,
                ),
              ),
            ].column(spacing: dimensions.smallH),
          ),
          if (isSelected)
            PositionedDirectional(
              top: -dimensions.h(6),
              end: -dimensions.w(6),
              child: Container(
                padding: EdgeInsets.all(dimensions.w(2)),
                decoration: BoxDecoration(
                  color: colors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: colors.surface, width: 2),
                ),
                child: Icon(
                  Icons.check,
                  size: dimensions.w(14),
                  color: colors.buttonPrimaryText,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _logo(BuildContext context) {
    final size = context.dimensions.w(48);

    if (club.logo == null || club.logo!.isEmpty) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: context.colors.cardBackground,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            club.name.isNotEmpty ? club.name[0].toUpperCase() : '?',
            style: context.typo.headingSmall.copyWith(
              color: context.colors.primary,
            ),
          ),
        ),
      );
    }

    return AppImage.network(club.logo!)
        .setDimension(width: size, height: size)
        .setStyle(const AppImageStyle.circular(fit: BoxFit.cover))
        .build();
  }
}
