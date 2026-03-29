import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:koora_kick/common/widgets/map/providers/map_providers.dart';
import 'package:koora_kick/common/widgets/map/view_models/map_view_model.dart';
import 'package:koora_kick/common/widgets/map/models/map_widget_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MapWidget extends ConsumerWidget {

  factory MapWidget.google() =>
      const MapWidget(MapWidgetData(mapView: MapView.google));

  const MapWidget(this.data, {super.key});

  factory MapWidget.mapbox() =>
      const MapWidget(MapWidgetData(mapView: MapView.mapbox));
  final MapWidgetData data;

  MapWidget withRoute(LatLng origin, LatLng destination, {RouteColor color = RouteColor.primary}) => MapWidget(
      data.copyWith(
        routeOrigin: origin,
        routeDestination: destination,
        routeColor: color,
      ),
    );

  MapWidget withTracking() => MapWidget(
      data.copyWith(
        isTracking: true,
      ),
    );

  MapWidget withNavigation(List<LatLng> stations) => MapWidget(
      data.copyWith(
        routeColor: RouteColor.primary,
        navigationStations: stations,
      ),
    );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapState = ref.watch(mapViewModelProvider);
    final adapter = ref.watch(mapAdapterProvider(data.mapView));

    return adapter.buildMap(
      ref: ref,
      config: data,
      mapState: mapState,
    );
  }
}

extension MapWidgetExtensions on MapWidget {
  /// Chain custom map transformations
  MapWidget apply(MapWidget Function(MapWidget map) transformer) => transformer(this);
}

extension RouteMarkersExtension on MapWidget {
  MapWidget withRouteMarkers({
    required String originAssetPath,
    required String destinationAssetPath,
    required List<String> middleAssetPaths,
    required List<LatLng> routes,
  }) {
    // Convert assets to MapMarkerData (icon will be resolved internally in adapter)
    final List<MapMarkerData> middleMarkers = [];

    for (int i = 1; i < routes.length - 1; i++) {
      middleMarkers.add(
        MapMarkerData(
          id: "mid_$i",
          position: routes[i],
          number: i,
          icon: middleAssetPaths.first,
        ),
      );
    }

    return MapWidget(
      data.copyWith(
        originMarker: MapMarkerData(
          id: "origin",
          position: routes.first,
          icon: originAssetPath,
        ),
        destinationMarker: MapMarkerData(
          id: "destination",
          position: routes.last,
          icon: destinationAssetPath,
        ),
        middleMarkers: middleMarkers,
      ),
    );
  }
}


