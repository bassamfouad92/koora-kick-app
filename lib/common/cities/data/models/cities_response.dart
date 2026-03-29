import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_response.freezed.dart';
part 'cities_response.g.dart';

@freezed
sealed class CitiesResponse with _$CitiesResponse {
  const factory CitiesResponse({
    @Default([]) List<City> data,
  }) = _CitiesResponse;

  factory CitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$CitiesResponseFromJson(json);
}

@freezed
sealed class City with _$City {
  const factory City({
    @JsonKey(name: '_id') String? id,
    String? name,
    bool? active,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}
