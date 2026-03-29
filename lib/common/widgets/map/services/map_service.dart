import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'dart:async';

abstract class MapService {

  void setController(dynamic controller);

  Future<void> moveCamera(LatLng target, {double zoom = 15.0, bool animate = true});
  Future<void> zoomIn(double amount);
  Future<void> zoomToBounds(List<LatLng> points, {double padding = 50});

  // -----------------------------------------------------------------
  // CALLBACK HANDLERS
  // -----------------------------------------------------------------

  Future<void> get mapReady;
  void dispose();
}