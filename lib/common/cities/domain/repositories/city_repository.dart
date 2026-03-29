import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/cities/data/requests/get_cities_request.dart';

abstract class CityRepository {
  Future<List<CityModel>> getCities(GetCitiesRequest request);
}
