import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/locations/data/requests/get_location_countries_request.dart';
import 'package:koora_kick/common/locations/domain/entities/location_country_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class LocationRepository {
  Future<Result<List<LocationCountryModel>>> getCountries();
}

final locationRepositoryProvider =
    Provider<LocationRepository>(LocationRepositoryImpl.new);

class LocationRepositoryImpl implements LocationRepository {
  LocationRepositoryImpl(this._ref);

  final Ref _ref;

  late final _networkClient = _ref.read(networkProvider);

  @override
  Future<Result<List<LocationCountryModel>>> getCountries() async {
    final response =
        await _networkClient.execute(GetLocationCountriesRequest());
    return response.when(
      success: (countries) => Result.success(countries),
      error: (exception) => Result.error(exception),
    );
  }
}
