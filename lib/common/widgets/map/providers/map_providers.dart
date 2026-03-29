import 'package:koora_kick/common/services/route_calculation_service.dart';
import 'package:koora_kick/common/widgets/map/adapters/google_map_adapter.dart';
import 'package:koora_kick/common/widgets/map/services/google_map_service_impl.dart';
import 'package:koora_kick/common/widgets/map/adapters/map_adapter.dart';
import 'package:koora_kick/common/widgets/map/services/map_service.dart';
import 'package:koora_kick/common/widgets/map/models/map_widget_data.dart';

import 'package:koora_kick/config/env.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'map_providers.g.dart';

final googleMapServiceImpl = GoogleMapServiceImpl();

@Riverpod(keepAlive: true)
MapService mapService(MapServiceRef ref) => googleMapServiceImpl;

@Riverpod(keepAlive: true)
PolylinePoints polylinePointsObject(PolylinePointsObjectRef ref) => PolylinePoints(apiKey: Env.googleMapsApiKey);

@Riverpod(keepAlive: true)
RouteCalculationService routeCalculationService(RouteCalculationServiceRef ref) {
  final polylinePoints = ref.watch(polylinePointsObjectProvider);
  return RouteCalculationServiceImpl(polylinePoints);
}

final mapAdapterProvider = Provider.family<MapAdapter, MapView>((ref, view) => GoogleMapAdapter());
