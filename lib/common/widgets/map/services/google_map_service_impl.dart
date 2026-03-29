import 'dart:async';
import 'package:koora_kick/common/widgets/map/services/map_service.dart';
import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as GMap;

class GoogleMapServiceImpl implements MapService {

  // Constructor
  GoogleMapServiceImpl();

  GMap.GoogleMapController? _googleMapController;

  final Completer<void> _mapReadyCompleter = Completer<void>();

  @override
  void setController(dynamic controller) {
    if (controller is GMap.GoogleMapController) {
      _googleMapController = controller;
      if (!_mapReadyCompleter.isCompleted) {
        _mapReadyCompleter.complete();
      }
    }
  }

  // -------------------------------------------------------------
  // 2. MapManager Streams/Future Implementation
  // -------------------------------------------------------------

  @override
  Future<void> get mapReady => _mapReadyCompleter.future;

  // -------------------------------------------------------------
  // 3. Control Methods Implementation (Logic to UI Flow)
  // -------------------------------------------------------------

  @override
  Future<void> moveCamera(LatLng target, {double zoom = 15.0, bool animate = true}) async {
    await mapReady;
    final cameraUpdate = GMap.CameraUpdate.newLatLngZoom(
        GMap.LatLng(target.latitude, target.longitude),
        zoom
    );
    try {
      if (animate) {
        await _googleMapController?.animateCamera(cameraUpdate);
      } else {
        await _googleMapController?.moveCamera(cameraUpdate);
      }
    } catch (e) {
      // Ignore exception if controller is used after disposal
    }
  }

  @override
  Future<void> zoomIn(double amount) async {
    await mapReady;
    _googleMapController?.animateCamera(GMap.CameraUpdate.zoomBy(amount));
  }

  @override
  Future<void> zoomToBounds(List<LatLng> points, {double padding = 50}) async {
    await mapReady;

    if (_googleMapController == null || points.isEmpty) {
      return;
    }

    double minLat = points.first.latitude;
    double maxLat = points.first.latitude;
    double minLng = points.first.longitude;
    double maxLng = points.first.longitude;

    for (final point in points) {
      minLat = minLat < point.latitude ? minLat : point.latitude;
      maxLat = maxLat > point.latitude ? maxLat : point.latitude;
      minLng = minLng < point.longitude ? minLng : point.longitude;
      maxLng = maxLng > point.longitude ? maxLng : point.longitude;
    }

    final GMap.LatLngBounds bounds = GMap.LatLngBounds(
      southwest: GMap.LatLng(minLat, minLng), // Bottom-left corner
      northeast: GMap.LatLng(maxLat, maxLng), // Top-right corner
    );

    final GMap.CameraUpdate cameraUpdate = GMap.CameraUpdate.newLatLngBounds(
      bounds,
      padding,
    );

    try {
      await _googleMapController?.animateCamera(cameraUpdate);
    } catch (e) {
      _googleMapController?.moveCamera(cameraUpdate);
    }
  }
  
  @override
  void dispose() {
    _googleMapController?.dispose();
  }
}