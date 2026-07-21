import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_marker_model.freezed.dart';
part 'map_marker_model.g.dart';

/// Marker categories returned by `GET /map/markers`. Only stadium /
/// screening / meetup are surfaced in the app right now (cafe/restaurant
/// venues arrive as `screening` markers with a `venueType`, but we don't
/// render them yet).
enum MapMarkerType {
  @JsonValue('stadium')
  stadium,
  @JsonValue('screening')
  screening,
  @JsonValue('meetup')
  meetup,
  unknown;

  /// PNG pin used on the map for this type.
  String get pinAsset => switch (this) {
        MapMarkerType.stadium => AppAssets.icPinStadium,
        MapMarkerType.screening => AppAssets.icPinScreening,
        MapMarkerType.meetup => AppAssets.icPinGround,
        MapMarkerType.unknown => AppAssets.icPinGround,
      };
}

@freezed
sealed class MarkerScreening with _$MarkerScreening {
  const factory MarkerScreening({
    @Default('') String title,
    DateTime? startsAt,
    // true = the match has already kicked off.
    @Default(false) bool nowShowing,
  }) = _MarkerScreening;

  factory MarkerScreening.fromJson(Map<String, dynamic> json) =>
      _$MarkerScreeningFromJson(json);
}

@freezed
sealed class MapMarkerModel with _$MapMarkerModel {
  const factory MapMarkerModel({
    required String id,
    required String name,
    @JsonKey(unknownEnumValue: MapMarkerType.unknown)
    @Default(MapMarkerType.unknown)
    MapMarkerType type,
    String? description,
    @Default('') String address,
    required double lat,
    required double lng,
    // cafe | restaurant | null
    String? venueType,
    @Default(false) bool indoor,
    double? rating,
    String? photo,
    String? cityId,
    // Present only in nearby (lat/lng) mode, absent in city-browse mode.
    double? distanceKm,
    MarkerScreening? screening,
  }) = _MapMarkerModel;

  factory MapMarkerModel.fromJson(Map<String, dynamic> json) =>
      _$MapMarkerModelFromJson(json);
}
