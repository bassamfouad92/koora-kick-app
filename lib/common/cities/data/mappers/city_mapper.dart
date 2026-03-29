import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/cities/data/models/cities_response.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class CityMapper implements DataMapper<List<CityModel>> {
  @override
  List<CityModel> map(dynamic data) {
    if (data is List) {
      return data
          .map((e) => _mapToCityModel(City.fromJson(e as Map<String, dynamic>)))
          .toList();
    }
    final response = CitiesResponse.fromJson(data as Map<String, dynamic>);
    return response.data.map(_mapToCityModel).toList();
  }

  CityModel _mapToCityModel(City data) => CityModel(
        id: data.id ?? '',
        name: data.name ?? 'Unknown',
        active: data.active ?? true,
      );
}
