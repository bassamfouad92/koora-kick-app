import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/locations/domain/entities/location_country_model.dart';
import 'package:koora_kick/common/locations/providers/location_countries_provider.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Picker for the profile location country (`GET /locations/countries`).
/// Loads its own data via [locationCountriesProvider] and reports the
/// picked country through [onCountrySelected].
class LocationCountryBottomSheet extends ConsumerStatefulWidget {
  const LocationCountryBottomSheet({
    required this.onCountrySelected,
    this.selectedCountryId,
    super.key,
  });

  final ValueChanged<LocationCountryModel> onCountrySelected;
  final String? selectedCountryId;

  @override
  ConsumerState<LocationCountryBottomSheet> createState() =>
      _LocationCountryBottomSheetState();
}

class _LocationCountryBottomSheetState
    extends ConsumerState<LocationCountryBottomSheet> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final countriesAsync = ref.watch(locationCountriesProvider);

    return countriesAsync.when(
      loading: () => SizedBox(
        height: context.dimensions.h(200),
        child: Center(
          child: CircularProgressIndicator(color: context.colors.primary),
        ),
      ),
      error: (_, __) => _RetryContent(
        message: AuthStrings.noCountriesFoundText.localized(),
        onRetry: () => ref.invalidate(locationCountriesProvider),
      ),
      data: (countries) => _buildList(context, countries),
    );
  }

  Widget _buildList(
    BuildContext context,
    List<LocationCountryModel> countries,
  ) {
    final filteredCountries = countries
        .where((country) =>
            country.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    final showSearchField = countries.length > 5;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showSearchField) ...[
          AppInputField.search(
            controller: _searchController,
            hintText: AuthStrings.searchCountryText.localized(),
          ).withOnChanged((value) => setState(() => _searchQuery = value)),
          SizedBox(height: context.dimensions.medium),
        ],
        if (filteredCountries.isEmpty)
          Padding(
            padding: EdgeInsets.all(context.dimensions.large),
            child: Text(
              AuthStrings.noCountriesFoundText.localized(),
              style: context.typo.bodyMedium,
            ),
          )
        else
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: filteredCountries.length,
              separatorBuilder: (_, __) =>
                  Divider(height: 1, color: context.colors.border),
              itemBuilder: (context, index) {
                final country = filteredCountries[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(country.name, style: context.typo.bodyMedium),
                  trailing: country.id == widget.selectedCountryId
                      ? AppImage.asset(AppAssets.icCheck).build()
                      : null,
                  onTap: () {
                    widget.onCountrySelected(country);
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}

class _RetryContent extends StatelessWidget {
  const _RetryContent({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(context.dimensions.large),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, style: context.typo.bodyMedium),
            SizedBox(height: context.dimensions.medium),
            IconButton(
              onPressed: onRetry,
              icon: Icon(Icons.refresh, color: context.colors.primary),
            ),
          ],
        ),
      );
}
