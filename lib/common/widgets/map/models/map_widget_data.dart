import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'map_widget_data.freezed.dart';

enum MapView { google, mapbox }

@freezed
sealed class MapWidgetData with _$MapWidgetData {
  const factory MapWidgetData({
    required MapView mapView,
    LatLng? routeOrigin,
    LatLng? routeDestination,
    RouteColor? routeColor,
    bool? isTracking,
    List<LatLng>? navigationStations,

    MapMarkerData? originMarker,
    MapMarkerData? destinationMarker,
    List<MapMarkerData>? middleMarkers,
  }) = _MapWidgetData;
}
