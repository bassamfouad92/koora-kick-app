import 'package:koora_kick/app/provider/country_provider.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CountryBottomSheet extends ConsumerStatefulWidget {
  const CountryBottomSheet({super.key});

  @override
  ConsumerState<CountryBottomSheet> createState() => _CountryBottomSheetState();
}

class _CountryBottomSheetState extends ConsumerState<CountryBottomSheet> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    final currentState = ref.read(countryNotifierProvider).value;
    _searchController = TextEditingController(text: currentState?.searchQuery ?? '');
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final countryState = ref.watch(countryNotifierProvider);
    final notifier = ref.read(countryNotifierProvider.notifier);

    return countryState.when(
      loading: () => SizedBox(
        height: context.dimensions.h(200),
        child: const Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => Padding(
        padding: EdgeInsets.all(context.dimensions.large),
        child: _buildRetryView(notifier)
      ),
      data: (state) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (state.countries.length > 5) ...[
              AppInputField.search(
                controller: _searchController,
                hintText: AuthStrings.searchCountryText.localized(),
                actionButton: state.searchQuery.isNotEmpty
                    ? InputFieldActionButton(
                        icon: AppImage.asset(AppAssets.icClearCross).build(),
                        onTap: () {
                          _searchController.clear();
                          notifier.clearSearch();
                        },
                      )
                    : null,
              ).withOnChanged(notifier.onSearchChanged),
              SizedBox(height: context.dimensions.medium),
            ],
            if (state.filteredCountries.isEmpty)
              Padding(
                padding: EdgeInsets.all(context.dimensions.large),
                child: _buildRetryView(notifier),
              )
            else
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.filteredCountries.length,
                  separatorBuilder: (_, __) => Divider(
                    height: 1,
                    color: context.colors.border,
                  ),
                  itemBuilder: (context, index) {
                    final country = state.filteredCountries[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      leading: (country.imageType == AppImageType.network
                          ? AppImage.network(country.flag)
                          : AppImage.asset(country.flag))
                          .setDimension(width: context.dimensions.countryFlagWidth, height: context.dimensions.countryFlagHeight)
                          .build(),
                      title: Text(country.name, style: context.typo.bodyMedium),
                      trailing: Text(
                        country.displayCode,
                        style: context.typo.bodyMedium
                            .withColor(context.colors.textSecondary),
                      ),
                      onTap: () {
                        context.pop(country);
                      },
                    );
                  },
                ),
              ),
          ],
        ),
    );
  }

  Widget _buildRetryView(CountryNotifier notifier) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppText.body16(AuthStrings.somethingWentWrong.localized()),
        SizedBox(height: context.dimensions.medium),
        AppButton.primary(
          AuthStrings.globalRetry.localized(),
          onPressed: notifier.refresh,
        ),
      ],
    );
}