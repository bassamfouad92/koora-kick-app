import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/features/koora_map/domain/entities/map_marker_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'koora_map_state.freezed.dart';

/// The chips above the map. [all] shows stadium/screening/meetup together;
/// the rest map to a single [MapMarkerType].
enum MapFilter {
  all,
  stadiums,
  liveScreening,
  grounds;

  MapMarkerType? get markerType => switch (this) {
        MapFilter.all => null,
        MapFilter.stadiums => MapMarkerType.stadium,
        MapFilter.liveScreening => MapMarkerType.screening,
        MapFilter.grounds => MapMarkerType.meetup,
      };
}

@freezed
sealed class KooraMapStatus with _$KooraMapStatus {
  const factory KooraMapStatus.initial() = _Initial;
  const factory KooraMapStatus.loading() = _Loading;
  const factory KooraMapStatus.loaded() = _Loaded;
  const factory KooraMapStatus.error(AppError error) = _Error;
}

/// Resolved map center (device location, or the Riyadh fallback).
typedef MapCameraTarget = ({double lat, double lng});

@freezed
sealed class KooraMapState with _$KooraMapState {
  const factory KooraMapState({
    @Default(KooraMapStatus.initial()) KooraMapStatus status,
    @Default([]) List<MapMarkerModel> markers,
    @Default(MapFilter.all) MapFilter filter,
    MapMarkerModel? selectedMarker,
    // Where the camera should point; set once location resolves.
    MapCameraTarget? cameraTarget,
    @Default(false) bool hasUserLocation,
  }) = _KooraMapState;
}
