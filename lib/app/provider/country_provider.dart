import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/countries/domain/services/country_service.dart';
import 'package:koora_kick/common/storage/country_store.dart';
import 'package:device_region/device_region.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'country_provider.g.dart';
part 'country_provider.freezed.dart';

@freezed
abstract class CountryState with _$CountryState {
  const factory CountryState({
    @Default([]) List<CountryModel> countries,
    @Default([]) List<CountryModel> filteredCountries,
    @Default('') String searchQuery,
    @Default(CountryModel.defaultCountry) CountryModel defaultCountry,
  }) = _CountryState;
}

@Riverpod(keepAlive: true)
class CountryNotifier extends _$CountryNotifier {
  @override
  Future<CountryState> build() async {
    final service = ref.read(countryServiceProvider);
    final store = ref.read(countryStoreProvider);

    List<CountryModel> countries = [];

    final cached = await store.fetch();
    if (cached != null && cached.isNotEmpty) {
      countries = cached;
    }

    if (countries.isEmpty) {
          countries = await service.getAvailableCountries();
          if (countries.isNotEmpty) {
            await store.save(countries);
          }
    }

    // fallback to Egyptian list if still empty
    if (countries.isEmpty) {
      countries = [CountryModel.defaultCountry];
    }

    String? detectedCode;
    try {
      detectedCode = await DeviceRegion.getSIMCountryCode();
    } catch (e) {
      debugPrint("DeviceRegion error: $e");
    }

    CountryModel? detectedDefault = countries.firstWhereOrNull(
      (c) => c.countryCode.toUpperCase() == detectedCode?.toUpperCase(),
    );

    detectedDefault ??= countries.firstWhereOrNull(
      (c) => c.countryCode == CountryModel.defaultCountry.countryCode,
    );

    detectedDefault ??= CountryModel.defaultCountry;

    return CountryState(
      countries: countries,
      filteredCountries: countries,
      defaultCountry: detectedDefault,
    );
  }

  void onSearchChanged(String query) {
    state.whenData((currentState) {
      final filtered = currentState.countries.where((country) {
        final lowerQuery = query.toLowerCase();
        return country.name.toLowerCase().contains(lowerQuery) ||
            country.code.contains(lowerQuery);
      }).toList();

      state = AsyncData(currentState.copyWith(
        searchQuery: query,
        filteredCountries: filtered,
      ));
    });
  }

  void clearSearch() => onSearchChanged('');

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(build);
  }
}

@riverpod
List<CountryModel> countryList(Ref ref) =>
    ref.watch(countryNotifierProvider).value?.countries ?? [];
