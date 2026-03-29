import 'package:koora_kick/common/location_manager/common/utils/location_utils.dart';
import 'package:koora_kick/common/widgets/map/models/map_models.dart';

extension LatLngDistanceX on LatLng {
  double distanceKmTo(LatLng other) {
    final meters = LocationUtils.calculateDistanceMeters(
      latitude,
      longitude,
      other.latitude,
      other.longitude,
    );
    return meters / 1000.0;
  }
}