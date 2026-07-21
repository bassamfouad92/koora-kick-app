import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/common/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:koora_kick/features/koora_map/domain/entities/map_marker_model.dart';
import 'package:koora_kick/features/koora_map/koora_map_strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

/// Detail card shown when a map pin is tapped (design: place name, type,
/// rating, distance, address, live-screening info + Directions/Share).
class MarkerDetailSheet extends StatelessWidget {
  const MarkerDetailSheet({required this.marker, super.key});

  final MapMarkerModel marker;

  static Future<void> show(BuildContext context, MapMarkerModel marker) =>
      AppBottomSheet.show<void>(
        context: context,
        child: MarkerDetailSheet(marker: marker),
      );

  /// Venue photo (cafe/place logo) when available; falls back to the type pin.
  Widget _leadingImage(BuildContext context) {
    final photo = marker.photo;
    const size = 56.0;
    final pinFallback = AppImage.asset(marker.type.pinAsset)
        .setDimension(width: size, height: size)
        .setStyle(const AppImageStyle(fit: BoxFit.contain))
        .build();

    if (photo == null || photo.isEmpty) {
      return pinFallback;
    }
    return AppImage.network(photo)
        .setDimension(width: size, height: size)
        .setStyle(
          AppImageStyle.rounded(
            borderRadius: BorderRadius.circular(context.dimensions.radiusMedium),
          ),
        )
        .setErrorWidget(pinFallback)
        .build();
  }

  String _typeLabel() => switch (marker.type) {
        MapMarkerType.stadium => KooraMapStrings.typeStadium,
        MapMarkerType.screening => KooraMapStrings.typeScreening,
        MapMarkerType.meetup => KooraMapStrings.typeGround,
        MapMarkerType.unknown => KooraMapStrings.typeGround,
      };

  Future<void> _openDirections(BuildContext context) async {
    final uri = Uri.parse(
      'https://www.google.com/maps/dir/?api=1&destination=${marker.lat},${marker.lng}',
    );
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (context.mounted) {
        SnackBarUtils.showError('global_something_went_wrong'.localized());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screening = marker.screening;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _leadingImage(context),
            SizedBox(width: context.dimensions.smallW),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    marker.name,
                    style: context.typo.headingSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: context.dimensions.xSmallH),
                  Text(
                    _typeLabel().localized(),
                    style: context.typo.bodySmall
                        .copyWith(color: context.colors.primary),
                  ),
                ],
              ),
            ),
            if (marker.rating != null) _RatingBadge(rating: marker.rating!),
          ],
        ),
        SizedBox(height: context.dimensions.mediumH),
        _InfoRow(
          icon: Icons.location_on_outlined,
          text: marker.address.isNotEmpty ? marker.address : '-',
        ),
        if (marker.distanceKm != null) ...[
          SizedBox(height: context.dimensions.smallH),
          _InfoRow(
            icon: Icons.near_me_outlined,
            text: '${marker.distanceKm!.toStringAsFixed(1)} '
                '${KooraMapStrings.kmAway.localized()}',
          ),
        ],
        SizedBox(height: context.dimensions.smallH),
        _InfoRow(
          icon: marker.indoor ? Icons.home_outlined : Icons.wb_sunny_outlined,
          text: (marker.indoor
                  ? KooraMapStrings.indoor
                  : KooraMapStrings.outdoor)
              .localized(),
        ),
        if (screening != null) ...[
          SizedBox(height: context.dimensions.mediumH),
          _ScreeningCard(screening: screening),
        ],
        SizedBox(height: context.dimensions.largeH),
        Row(
          children: [
            Expanded(
              child: AppButton.primary(
                KooraMapStrings.directions.localized(),
                onPressed: () => _openDirections(context),
              ),
            ),
            SizedBox(width: context.dimensions.smallW),
            Expanded(
              child: AppButton.outline(
                KooraMapStrings.share.localized(),
                onPressed: () => _openDirections(context),
              ),
            ),
          ],
        ),
        SizedBox(height: context.dimensions.smallH),
      ],
    );
  }
}

class _RatingBadge extends StatelessWidget {
  const _RatingBadge({required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, size: 16, color: context.colors.warning),
          SizedBox(width: context.dimensions.xSmallW),
          Text(rating.toStringAsFixed(1), style: context.typo.bodyMedium.semiBold),
        ],
      );
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: context.colors.textSecondary),
          SizedBox(width: context.dimensions.smallW),
          Expanded(
            child: Text(
              text,
              style: context.typo.bodyMedium
                  .copyWith(color: context.colors.textSecondary),
            ),
          ),
        ],
      );
}

class _ScreeningCard extends StatelessWidget {
  const _ScreeningCard({required this.screening});

  final MarkerScreening screening;

  @override
  Widget build(BuildContext context) {
    final startsAt = screening.startsAt?.toLocal();

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(context.dimensions.medium),
      decoration: BoxDecoration(
        color: context.colors.primary.withOpacity(0.12),
        borderRadius: BorderRadius.circular(context.dimensions.radiusMedium),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  screening.title,
                  style: context.typo.bodyMedium.semiBold,
                ),
              ),
              if (screening.nowShowing)
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dimensions.small,
                    vertical: context.dimensions.xSmall / 2,
                  ),
                  decoration: BoxDecoration(
                    color: context.colors.error,
                    borderRadius:
                        BorderRadius.circular(context.dimensions.radiusSmall),
                  ),
                  child: Text(
                    KooraMapStrings.nowShowing.localized(),
                    style: context.typo.bodyExtraSmall.bold
                        .copyWith(color: context.colors.buttonPrimaryText),
                  ),
                ),
            ],
          ),
          if (startsAt != null) ...[
            SizedBox(height: context.dimensions.xSmallH),
            Text(
              DateFormat('EEE, d MMM · h:mm a').format(startsAt),
              style: context.typo.bodySmall
                  .copyWith(color: context.colors.textSecondary),
            ),
          ],
        ],
      ),
    );
  }
}
