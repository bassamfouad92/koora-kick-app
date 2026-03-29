import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/countries/data/requests/get_countries_request.dart';

abstract class CountryRepository {
  Future<List<CountryModel>> getLocalCountries();
  Future<List<CountryModel>> getServerCountries(GetCountriesRequest request);
}
