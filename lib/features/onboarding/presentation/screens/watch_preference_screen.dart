import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/onboarding/onboarding_strings.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum WatchPreference {
  cafesAndRestaurants(
    'cafes_restaurants',
    Icons.storefront_outlined,
    OnboardingStrings.watchCafesTitle,
    OnboardingStrings.watchCafesSubtitle,
  ),
  sportsLounges(
    'sports_lounges',
    Icons.sports_bar_outlined,
    OnboardingStrings.watchLoungesTitle,
    OnboardingStrings.watchLoungesSubtitle,
  ),
  publicPlaces(
    'public_places',
    Icons.park_outlined,
    OnboardingStrings.watchPublicTitle,
    OnboardingStrings.watchPublicSubtitle,
  ),
  atHome(
    'at_home',
    Icons.home_outlined,
    OnboardingStrings.watchHomeTitle,
    OnboardingStrings.watchHomeSubtitle,
  );

  const WatchPreference(this.id, this.icon, this.titleKey, this.subtitleKey);

  final String id;
  final IconData icon;
  final String titleKey;
  final String subtitleKey;
}

class WatchPreferenceScreen extends ConsumerStatefulWidget {
  const WatchPreferenceScreen({super.key});

  @override
  ConsumerState<WatchPreferenceScreen> createState() =>
      _WatchPreferenceScreenState();
}

class _WatchPreferenceScreenState
    extends ConsumerState<WatchPreferenceScreen> {
  WatchPreference? _selected;

  @override
  Widget build(BuildContext context) => KooraKickPageBuilder.withAppBar()
      .title(
        Text(
          OnboardingStrings.watchTitle.localized(),
          style: context.typo.headingLarge,
        ),
      )
      .subtitle(
        Text(
          OnboardingStrings.watchSubtitle.localized(),
          style: context.typo.bodyMedium.copyWith(
            color: context.colors.textSecondary,
          ),
        ).withPadding(EdgeInsets.only(top: context.dimensions.smallH)),
      )
      .content(
        [
          for (final option in WatchPreference.values)
            _buildOptionTile(context, option),
        ].column(spacing: context.dimensions.mediumH),
      )
      .withBottomContent(
        [
          AppButton.primary(
            OnboardingStrings.saveAndContinueButton.localized(),
            onPressed: _saveAndContinue,
          ),
          Text(
            OnboardingStrings.skipForNowButton.localized(),
            style: context.typo.bodyMedium.semiBold.copyWith(
              color: context.colors.textLink,
            ),
          )
              .onTap(_goToAllSet)
              .withPadding(EdgeInsets.only(top: context.dimensions.mediumH)),
        ].column(),
      )
      .alignTo(CrossAxisAlignment.start)
      .scrollable();

  Widget _buildOptionTile(BuildContext context, WatchPreference option) {
    final colors = context.colors;
    final dimensions = context.dimensions;
    final isSelected = _selected == option;

    return InkWell(
      onTap: () => setState(() => _selected = option),
      borderRadius: BorderRadius.circular(dimensions.radiusLarge),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        padding: EdgeInsets.all(dimensions.medium),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(dimensions.radiusLarge),
          border: Border.all(
            color: isSelected ? colors.primary : colors.border,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: [
          Icon(
            option.icon,
            color: isSelected ? colors.primary : colors.textSecondary,
            size: dimensions.iconSizeMedium,
          ),
          Expanded(
            child: [
              Text(
                option.titleKey.localized(),
                style: context.typo.bodyMedium.semiBold,
              ),
              Text(
                option.subtitleKey.localized(),
                style: context.typo.bodySmall.copyWith(
                  color: colors.textSecondary,
                ),
              ),
            ].column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: dimensions.xSmallH,
            ),
          ),
          Icon(
            isSelected
                ? Icons.check_circle
                : Icons.radio_button_unchecked,
            color: isSelected ? colors.primary : colors.border,
            size: dimensions.iconSizeMedium,
          ),
        ].row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: dimensions.mediumW,
        ),
      ),
    );
  }

  Future<void> _saveAndContinue() async {
    final store = ref.read(appSettingsStoreProvider);
    final settings = await store.fetch() ?? const AppSettingsData();
    await store.save(
      settings.copyWith(watchPreference: _selected?.id ?? ''),
    );
    _goToAllSet();
  }

  void _goToAllSet() {
    if (!mounted) return;
    const AllSetRoute().push(context);
  }
}
