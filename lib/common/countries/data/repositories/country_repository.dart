import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/countries/data/mappers/local_countries_mapper.dart';
import 'package:koora_kick/common/countries/data/requests/get_countries_request.dart';
import 'package:koora_kick/common/countries/domain/repositories/country_repository.dart';
import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart' as app;
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryRepositoryProvider = Provider<CountryRepository>(CountryRepositoryImpl.new);

class CountryRepositoryImpl implements CountryRepository {
  CountryRepositoryImpl(this._ref);

  final Ref _ref;
  bool _isInitialized = false;
  List<CountryWithPhoneCode>? _cachedCountries;

  late final _networkClient = _ref.read(networkProvider);

  @override
  Future<List<CountryModel>> getLocalCountries() async {
    await _ensureCacheIsPopulated();
    return _cachedCountries!.map(LocalCountriesMapper.fromLib).toList();
  }

  @override
  Future<List<CountryModel>> getServerCountries(GetCountriesRequest request) async {
    final response = await _networkClient.execute(request);
    return response.when(
      success: (data) => data.data.map(LocalCountriesMapper.fromServer).toList(),
      error: (_) => <CountryModel>[],
    );
  }

  Future<void> _ensureCacheIsPopulated() async {
    if (!_isInitialized) {
      await init();
      _cachedCountries = CountryManager().countries;
      _isInitialized = true;
    }
  }
}
