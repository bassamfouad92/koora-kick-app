import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/constants/app_size.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/signup/create_account/create_account_strings.dart';
import 'package:koora_kick/features/signup/create_account/view_model/create_account_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CityBottomSheet extends ConsumerStatefulWidget {
  const CityBottomSheet({super.key});

  @override
  ConsumerState<CityBottomSheet> createState() => _CityBottomSheetState();
}

class _CityBottomSheetState extends ConsumerState<CityBottomSheet> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  final FocusNode _searchFocus = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(createAccountViewModelProvider);
    
    if (state.isCitiesLoading && state.cities.isEmpty) {
      return SizedBox(
        height: context.dimensions.h(200),
        child: Center(
          child: CircularProgressIndicator(
            color: context.colors.primary,
          ),
        ),
      );
    }

    final filteredCities = state.cities
        .where((city) =>
            city.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    final showSearchField = state.cities.length > 5;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showSearchField) ...[
          AppInputField.search(
            controller: _searchController,
            hintText: CreateAccountStrings.searchCity.localized(),
            actionButton: _searchQuery.isNotEmpty 
              ? InputFieldActionButton(
                  icon: AppImage.asset(AppAssets.icClearCross).build(),
                  onTap: () {
                    _searchController.clear();
                    setState(() => _searchQuery = '');
                  },
                )
              : null,
          ).withFocus(_searchFocus).withOnChanged((value) => setState(() => _searchQuery = value)),
          SizedBox(height: context.dimensions.medium),
        ],
        if (filteredCities.isEmpty)
          Padding(
            padding: EdgeInsets.all(context.dimensions.large),
            child: Text(CreateAccountStrings.noCityFound.localized(),style: context.typo.bodyMedium),
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
                  title: Text(city.name ,style: context.typo.bodyMedium),
                  trailing: city.isSelected ? AppImage.asset(AppAssets.icCheck).build() : null,
                  onTap: () {
                    Navigator.of(context).pop(city);
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}

