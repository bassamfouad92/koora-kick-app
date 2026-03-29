// map_utils.dart

import 'dart:math' show cos, sin, atan2, pi;
import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:flutter/cupertino.dart';

@immutable
class MapUtils {
  static const double _degreesToRadiansFactor = pi / 180;
  static const double _radiansToDegreesFactor = 180 / pi;
  static const double _minDistanceSq = 1e-10;

  static bool isMovementLargeEnough(LatLng a, LatLng b) {
    final dLat = b.latitude - a.latitude;
    final dLng = b.longitude - a.longitude;
    return (dLat * dLat + dLng * dLng) > _minDistanceSq;
  }

  /// Calculates the bearing (direction in degrees) from a starting LatLng point to an ending LatLng point.
  /// The result is a compass bearing between 0 and 360 degrees (North=0, East=90, South=180, West=270).
  static double calculateBearing(LatLng start, LatLng end) {
    // 1. Convert degrees to radians
    final startLat = _degreesToRadians(start.latitude);
    final startLng = _degreesToRadians(start.longitude);
    final endLat = _degreesToRadians(end.latitude);
    final endLng = _degreesToRadians(end.longitude);

    // 2. Main Bearing Formula (Haversine-based calculation)
    final y = sin(endLng - startLng) * cos(endLat);
    final x = cos(startLat) * sin(endLat) - sin(startLat) * cos(endLat) * cos(endLng - startLng);

    // 3. Convert result back to degrees
    final bearing = _radiansToDegrees(atan2(y, x));

    // 4. Adjust the result to be within the 0 to 360 degree range
    return (bearing + 360) % 360;
  }

  /// Converts degrees to radians.
  static double _degreesToRadians(double degrees) => degrees * _degreesToRadiansFactor;

  /// Converts radians to degrees.
  static double _radiansToDegrees(double radians) => radians * _radiansToDegreesFactor;
}