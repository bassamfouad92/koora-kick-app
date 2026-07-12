import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/cities/providers/cities_provider.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/signup/create_account/create_account_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Picker for the profile city (`GET /locations/cities?countryId=`).
/// Loads its own data via [citiesProvider] for [countryId] and reports the
/// picked city through [onCitySelected].
class CityBottomSheet extends ConsumerStatefulWidget {
  const CityBottomSheet({
    required this.countryId,
    required this.onCitySelected,
    this.selectedCityId,
    super.key,
  });

  final String countryId;
  final ValueChanged<CityModel> onCitySelected;
  final String? selectedCityId;

  @override
  ConsumerState<CityBottomSheet> createState() => _CityBottomSheetState();
}

class _CityBottomSheetState extends ConsumerState<CityBottomSheet> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final citiesAsync = ref.watch(citiesProvider(countryId: widget.countryId));

    return citiesAsync.when(
      loading: () => SizedBox(
        height: context.dimensions.h(200),
        child: Center(
          child: CircularProgressIndicator(color: context.colors.primary),
        ),
      ),
      // The repository swallows API errors into an empty list, so this only
      // guards unexpected failures.
      error: (_, __) => Padding(
        padding: EdgeInsets.all(context.dimensions.large),
        child: Text(
          CreateAccountStrings.noCityFound.localized(),
          style: context.typo.bodyMedium,
        ),
      ),
      data: (cities) => _buildList(context, cities),
    );
  }

  Widget _buildList(BuildContext context, List<CityModel> cities) {
    final filteredCities = cities
        .where((city) =>
            city.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    final showSearchField = cities.length > 5;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showSearchField) ...[
          AppInputField.search(
            controller: _searchController,
            hintText: CreateAccountStrings.searchCity.localized(),
          ).withOnChanged((value) => setState(() => _searchQuery = value)),
          SizedBox(height: context.dimensions.medium),
        ],
        if (filteredCities.isEmpty)
          Padding(
            padding: EdgeInsets.all(context.dimensions.large),
            child: Text(
              CreateAccountStrings.noCityFound.localized(),
              style: context.typo.bodyMedium,
            ),
          )
        else
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: filteredCities.length,
              separatorBuilder: (_, __) =>
                  Divider(height: 1, color: context.colors.border),
              itemBuilder: (context, index) {
                final city = filteredCities[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(city.name, style: context.typo.bodyMedium),
                  trailing: city.id == widget.selectedCityId
                      ? AppImage.asset(AppAssets.icCheck).build()
                      : null,
                  onTap: () {
                    widget.onCitySelected(city);
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
