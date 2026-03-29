import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

abstract interface class RouteCalculationService {
  Future<List<LatLng>> calculateRoutePath(LatLng origin, LatLng destination);
}

class RouteCalculationServiceImpl implements RouteCalculationService {
  RouteCalculationServiceImpl(this._polylinePoints);

  final PolylinePoints _polylinePoints;

  @override
  Future<List<LatLng>> calculateRoutePath(
    LatLng origin,
    LatLng destination,
  ) async {
    final request = RoutesApiRequest(
      origin: PointLatLng(origin.latitude, origin.longitude),
      destination: PointLatLng(destination.latitude, destination.longitude),
      travelMode: TravelMode.driving,
      routingPreference: RoutingPreference.trafficAware,
    );

    final response = await _polylinePoints.getRouteBetweenCoordinatesV2(
      request: request,
    );

    if (response.routes.isEmpty) {
      return [];
    }

    final route = response.routes.first;

    return route.polylinePoints.let(
      (points) => points.map((point) => LatLng(point.latitude, point.longitude)).toList(),
      orElse: () => [],
    );
  }
}
