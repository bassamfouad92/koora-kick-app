import 'dart:convert';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/storage/cache_store.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final countryStoreProvider = Provider(CountryStore.new);

class CountryStore implements CacheStore<List<CountryModel>> {
  CountryStore(this._ref);

  final Ref _ref;
  late final SharedPreferences _prefs = _ref.read(sharedPreferencesProvider);
  static const _key = 'cached_countries_list';

  @override
  Future<void> save(List<CountryModel> item) async {
    final listJson = item.map((e) => e.toJson()).toList();
    await _prefs.setString(_key, jsonEncode(listJson));
  }

  @override
  Future<List<CountryModel>?> fetch() async {
    final data = _prefs.getString(_key);
    if (data == null) {
      return null;
    }
    try {
      final List<dynamic> listJson = jsonDecode(data);
      return listJson.map((e) => CountryModel.fromJson(e as Map<String, dynamic>)).toList();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> remove() async {
    await _prefs.remove(_key);
  }
}
