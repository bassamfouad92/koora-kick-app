import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/locations/domain/entities/location_country_model.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class GetLocationCountriesRequest
    extends HttpRequest<List<LocationCountryModel>> {
  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/locations/countries';

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<List<LocationCountryModel>> get mapper =>
      LocationCountriesMapper();
}

class LocationCountriesMapper
    implements DataMapper<List<LocationCountryModel>> {
  @override
  List<LocationCountryModel> map(dynamic data) => (data as List)
      .map((json) =>
          LocationCountryModel.fromJson(json as Map<String, dynamic>))
      .toList();
}
