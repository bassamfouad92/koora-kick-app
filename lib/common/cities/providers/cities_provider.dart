import 'package:koora_kick/common/cities/data/repositories/city_repository.dart';
import 'package:koora_kick/common/cities/data/requests/get_cities_request.dart';
import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cities_provider.g.dart';

/// Loads the cities of a country (`GET /locations/cities?countryId=`).
/// Watched by pickers such as `CityBottomSheet`; a new [countryId] creates
/// a fresh family entry, so switching country never shows stale cities.
@riverpod
Future<List<CityModel>> cities(CitiesRef ref, {required String countryId}) =>
    ref
        .watch(cityRepositoryProvider)
        .getCities(GetCitiesRequest(countryId: countryId));
