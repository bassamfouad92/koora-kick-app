import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/cities/data/mappers/city_mapper.dart';
import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class GetCitiesRequest extends HttpRequest<List<CityModel>> {
  GetCitiesRequest({required this.countryId});

  final String countryId;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/country/$countryId/cities';

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<List<CityModel>> get mapper => CityMapper();
}
