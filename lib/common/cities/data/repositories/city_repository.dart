import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/cities/domain/repositories/city_repository.dart';
import 'package:koora_kick/common/cities/data/requests/get_cities_request.dart';
import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart' as app;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cityRepositoryProvider = Provider<CityRepository>(CityRepositoryImpl.new);

class CityRepositoryImpl implements CityRepository {
  CityRepositoryImpl(this._ref);

  final Ref _ref;

  late final _networkClient = _ref.read(networkProvider);

  @override
  Future<List<CityModel>> getCities(GetCitiesRequest request) async {
    final app.Result<List<CityModel>> response = await _networkClient.execute(request);
    return response.when(
      success: (List<CityModel> data) => data,
      error: (_) => <CityModel>[],
    );
  }
}
