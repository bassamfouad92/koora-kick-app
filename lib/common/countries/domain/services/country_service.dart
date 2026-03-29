import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/countries/domain/repositories/country_repository.dart';
import 'package:koora_kick/common/countries/data/repositories/country_repository.dart';
import 'package:koora_kick/common/countries/data/requests/get_countries_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryServiceProvider = Provider<CountryService>((ref) {
  final repository = ref.watch<CountryRepository>(countryRepositoryProvider);
  return CountryService(repository);
});

class CountryService {
  CountryService(this._repository);

  final CountryRepository _repository;

  Future<List<CountryModel>> getAvailableCountries() async {
    final localCountries = await _repository.getLocalCountries();
    final serverCountries = await _repository.getServerCountries(GetCountriesRequest());

    final libCountryMap = {for (final c in localCountries) c.countryCode: c};

    final result = serverCountries
        .map((serverCountry) {
          final localMetadata = libCountryMap[serverCountry.countryCode];
          if (localMetadata == null) {
            return serverCountry;
          }

          return localMetadata.copyWith(
            name: serverCountry.name,
            flag: serverCountry.flag,
            code: serverCountry.code,
            imageType: serverCountry.imageType,
            id: serverCountry.id,
          );
        })
        .toList();

    return result..sort((a, b) => a.name.compareTo(b.name));
  }
}
