import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'map_models.freezed.dart';
part 'map_models.g.dart';

enum RouteColor { neutral, primary, secondary }

@freezed
sealed class LatLng with _$LatLng {
  const factory LatLng(
      double latitude,
      double longitude,
      ) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) =>
      _$LatLngFromJson(json);
}

@freezed
sealed class MapMarkerData with _$MapMarkerData {
  const factory MapMarkerData({
    required String id,
    required LatLng position,
    dynamic icon,
    int? number,
    @Default(0.0) double rotation,
    @Default(0.4) double scale,
  }) = _MapMarkerData;

  factory MapMarkerData.none() => const MapMarkerData(
    id: '_none',
    position: LatLng(0, 0),
    rotation: 0.0,
    scale: 0.4
  );
}

@freezed
sealed class MapRouteData with _$MapRouteData {
  const factory MapRouteData({
    required String routeId,
    required List<LatLng> coordinates,
    @Default(RouteColor.neutral) RouteColor color,
  }) = _MapRouteData;
}

@freezed
sealed class CameraState with _$CameraState {
  const factory CameraState({
    required LatLng center,
    required double zoom,
  }) = _CameraState;
}

@freezed
sealed class MapConfig with _$MapConfig {
  const factory MapConfig({
    required Set<MapMarkerData> markers,
    required Set<MapRouteData> polylines,
    LatLng? initialLocation,
    @Default(12.0) double initialZoom,
    @Default(false) bool trafficEnabled,
    @Default(false) bool zoomGesturesEnabled,
  }) = _MapConfig;
}
