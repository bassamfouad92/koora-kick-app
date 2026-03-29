import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
sealed class CityModel with _$CityModel {
  const factory CityModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    @Default(true) bool active,
    @Default(false) bool isSelected,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}