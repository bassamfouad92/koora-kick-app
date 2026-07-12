import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_country_model.freezed.dart';
part 'location_country_model.g.dart';

/// Country as served by `GET /locations/countries` — used for profile
/// location, unlike [CountryModel] which drives phone dial codes.
@freezed
sealed class LocationCountryModel with _$LocationCountryModel {
  const factory LocationCountryModel({
    required String id,
    required String name,
    @Default('') String code,
    @Default(true) bool active,
    @Default(false) bool isSelected,
  }) = _LocationCountryModel;

  factory LocationCountryModel.fromJson(Map<String, dynamic> json) =>
      _$LocationCountryModelFromJson(json);
}
