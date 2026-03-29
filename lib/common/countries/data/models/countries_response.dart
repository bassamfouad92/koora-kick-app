import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_response.freezed.dart';
part 'countries_response.g.dart';

@freezed
sealed class CountriesResponse with _$CountriesResponse {
  const factory CountriesResponse({
    @Default([]) List<CountryData> data,
  }) = _CountriesResponse;

  factory CountriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CountriesResponseFromJson(json);
}

@freezed
sealed class CountryData with _$CountryData {
  const factory CountryData({
    @JsonKey(name: '_id') String? id,
    String? code,
    String? name,
    @JsonKey(name: 'phone_code') String? phoneCode,
    bool? active,
    String? flag,
  }) = _CountryData;

  factory CountryData.fromJson(Map<String, dynamic> json) =>
      _$CountryDataFromJson(json);
}