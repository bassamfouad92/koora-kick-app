import 'package:koora_kick/common/countries/data/models/countries_response.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class CountriesMapper implements DataMapper<CountriesResponse> {
  @override
  CountriesResponse map(dynamic data) {
    if (data is List) {
      return CountriesResponse(
        data: data
            .map((e) => CountryData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    }
    return CountriesResponse.fromJson(data as Map<String, dynamic>);
  }
}