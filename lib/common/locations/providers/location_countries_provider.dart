import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/locations/data/repositories/location_repository.dart';
import 'package:koora_kick/common/locations/domain/entities/location_country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_countries_provider.g.dart';

/// Loads the profile location countries (`GET /locations/countries`).
/// Watched by pickers such as `LocationCountryBottomSheet`; retry by
/// invalidating the provider.
@riverpod
Future<List<LocationCountryModel>> locationCountries(
  LocationCountriesRef ref,
) async {
  final result = await ref.watch(locationRepositoryProvider).getCountries();
  return result.when(
    success: (countries) => countries,
    error: (exception) => throw exception,
  );
}
