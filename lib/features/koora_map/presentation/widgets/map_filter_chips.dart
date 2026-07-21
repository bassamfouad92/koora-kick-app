import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/koora_map/koora_map_strings.dart';
import 'package:koora_kick/features/koora_map/presentation/state/koora_map_state.dart';
import 'package:flutter/material.dart';

/// Horizontal filter chips (All / Stadiums / Live Screening / Grounds) over
/// the top of the map.
class MapFilterChips extends StatelessWidget {
  const MapFilterChips({
    required this.selected,
    required this.onSelected,
    super.key,
  });

  final MapFilter selected;
  final ValueChanged<MapFilter> onSelected;

  IconData _iconFor(MapFilter filter) => switch (filter) {
        MapFilter.all => Icons.grid_view_rounded,
        MapFilter.stadiums => Icons.stadium_outlined,
        MapFilter.liveScreening => Icons.desktop_windows_outlined,
        MapFilter.grounds => Icons.sports_soccer_outlined,
      };

  String _labelFor(MapFilter filter) => switch (filter) {
        MapFilter.all => KooraMapStrings.filterAll,
        MapFilter.stadiums => KooraMapStrings.filterStadiums,
        MapFilter.liveScreening => KooraMapStrings.filterLiveScreening,
        MapFilter.grounds => KooraMapStrings.filterGrounds,
      };

  @override
  Widget build(BuildContext context) => SizedBox(
        height: context.dimensions.h(40),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: MapFilter.values.length,
          separatorBuilder: (_, __) =>
              SizedBox(width: context.dimensions.smallW),
          itemBuilder: (context, index) {
            final filter = MapFilter.values[index];
            return _Chip(
              icon: _iconFor(filter),
              label: _labelFor(filter).localized(),
              isSelected: filter == selected,
              onTap: () => onSelected(filter),
            );
          },
        ),
      );
}

class _Chip extends StatelessWidget {
  const _Chip({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 16,
                color: isSelected
                    ? context.colors.buttonPrimaryText
                    : context.colors.textSecondary,
              ),
              SizedBox(width: context.dimensions.xSmallW),
              Text(
                label,
                style: context.typo.bodySmall.semiBold.copyWith(
                  color: isSelected
                      ? context.colors.buttonPrimaryText
                      : context.colors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
