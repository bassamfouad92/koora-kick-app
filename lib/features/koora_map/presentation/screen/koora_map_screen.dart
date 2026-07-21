import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/koora_map/domain/entities/map_marker_model.dart';
import 'package:koora_kick/features/koora_map/presentation/state/koora_map_state.dart';
import 'package:koora_kick/features/koora_map/presentation/view_model/koora_map_view_model.dart';
import 'package:koora_kick/features/koora_map/presentation/widgets/koora_map_header.dart';
import 'package:koora_kick/features/koora_map/presentation/widgets/map_filter_chips.dart';
import 'package:koora_kick/features/koora_map/presentation/widgets/marker_detail_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class KooraMapScreen extends ConsumerStatefulWidget {
  const KooraMapScreen({super.key});

  @override
  ConsumerState<KooraMapScreen> createState() => _KooraMapScreenState();
}

class _KooraMapScreenState extends ConsumerState<KooraMapScreen> {
  static const _initialLat = 24.7136; // Riyadh fallback
  static const _initialLng = 46.6753;
  static const _pinIconSize = 0.28;

  MapboxMap? _map;
  PointAnnotationManager? _annotationManager;
  // Pulsing rings drawn behind "now showing" screening pins.
  CircleAnnotationManager? _circleManager;
  final Map<String, MapMarkerModel> _annotationToMarker = {};
  final Map<MapMarkerType, Uint8List> _pinBytes = {};
  final List<CircleAnnotation> _pulseRings = [];
  Timer? _pulseTimer;
  double _pulsePhase = 0;
  bool _isPulsing = false;

  @override
  void initState() {
    super.initState();
    _loadPinIcons();
  }

  @override
  void dispose() {
    _pulseTimer?.cancel();
    super.dispose();
  }

  Future<void> _loadPinIcons() async {
    for (final type in MapMarkerType.values) {
      final data = await rootBundle.load(type.pinAsset);
      _pinBytes[type] = data.buffer.asUint8List();
    }
    // Icons may finish loading after the first markers arrive; resync.
    await _syncAnnotations(ref.read(kooraMapViewModelProvider).markers);
  }

  Future<void> _onMapCreated(MapboxMap map) async {
    _map = map;
    // Circle manager created first so its rings render beneath the pins.
    _circleManager = await map.annotations.createCircleAnnotationManager();
    _annotationManager =
        await map.annotations.createPointAnnotationManager();
    _annotationManager!.tapEvents(onTap: _onAnnotationTap);

    // Blue location puck; needs OS location permission (handled per platform).
    await map.location.updateSettings(
      LocationComponentSettings(enabled: true, pulsingEnabled: true),
    );

    // If the location already resolved before the map was ready, center now.
    final target = ref.read(kooraMapViewModelProvider).cameraTarget;
    if (target != null) {
      await _flyTo(target.lat, target.lng);
    }

    await _syncAnnotations(ref.read(kooraMapViewModelProvider).markers);
  }

  void _onAnnotationTap(PointAnnotation annotation) {
    final marker = _annotationToMarker[annotation.id];
    if (marker == null) {
      return;
    }
    ref.read(kooraMapViewModelProvider.notifier).selectMarker(marker);
    MarkerDetailSheet.show(context, marker);
  }

  Future<void> _syncAnnotations(List<MapMarkerModel> markers) async {
    final manager = _annotationManager;
    if (manager == null || _pinBytes.length < MapMarkerType.values.length) {
      return;
    }

    await manager.deleteAll();
    _annotationToMarker.clear();

    for (final marker in markers) {
      final bytes = _pinBytes[marker.type] ?? _pinBytes[MapMarkerType.meetup];
      if (bytes == null) {
        continue;
      }
      final annotation = await manager.create(
        PointAnnotationOptions(
          geometry: Point(coordinates: Position(marker.lng, marker.lat)),
          image: bytes,
          iconSize: _pinIconSize,
          iconAnchor: IconAnchor.BOTTOM,
          // The screening title rides above the pin so users can see what's
          // on without tapping (mobile has no hover).
          textField: marker.screening?.title,
          textSize: 11,
          textOffset: [0, -3.4],
          textColor: Colors.white.value,
          textHaloColor: Colors.black.value,
          textHaloWidth: 1.2,
        ),
      );
      _annotationToMarker[annotation.id] = marker;
    }

    await _syncPulseRings(markers);
  }

  /// Creates a pulsing ring behind every "now showing" screening marker and
  /// (re)starts the animation loop.
  Future<void> _syncPulseRings(List<MapMarkerModel> markers) async {
    final manager = _circleManager;
    if (manager == null) {
      return;
    }

    _pulseTimer?.cancel();
    _pulseRings.clear();
    await manager.deleteAll();

    final nowShowing = markers.where(
      (m) => m.screening?.nowShowing ?? false,
    );

    for (final marker in nowShowing) {
      final ring = await manager.create(
        CircleAnnotationOptions(
          geometry: Point(coordinates: Position(marker.lng, marker.lat)),
          circleRadius: 16,
          circleColor: Colors.transparent.value,
          circleStrokeColor: context.colors.primary.value,
          circleStrokeWidth: 3,
          circleStrokeOpacity: 0.9,
        ),
      );
      _pulseRings.add(ring);
    }

    if (_pulseRings.isNotEmpty) {
      _pulseTimer = Timer.periodic(
        const Duration(milliseconds: 90),
        (_) => _tickPulse(),
      );
    }
  }

  Future<void> _tickPulse() async {
    final manager = _circleManager;
    if (manager == null || _pulseRings.isEmpty || _isPulsing) {
      return;
    }
    _isPulsing = true;
    _pulsePhase = (_pulsePhase + 0.06) % 1.0;

    // Ring expands outward and fades as it grows, then loops.
    final radius = ui.lerpDouble(16, 34, _pulsePhase)!;
    final strokeOpacity = ui.lerpDouble(0.9, 0.0, _pulsePhase)!;

    for (final ring in _pulseRings) {
      ring
        ..circleRadius = radius
        ..circleStrokeOpacity = strokeOpacity;
      await manager.update(ring);
    }
    _isPulsing = false;
  }

  /// Reads the map's current camera center (falls back to the initial
  /// coordinates) — used when a filter changes or the map is recentered.
  Future<({double lat, double lng})> _cameraCenter() async {
    final map = _map;
    if (map == null) {
      return (lat: _initialLat, lng: _initialLng);
    }
    final camera = await map.getCameraState();
    final position = camera.center.coordinates;
    return (lat: position.lat.toDouble(), lng: position.lng.toDouble());
  }

  Future<void> _onFilterSelected(MapFilter filter) async {
    final center = await _cameraCenter();
    await ref
        .read(kooraMapViewModelProvider.notifier)
        .setFilter(filter, lat: center.lat, lng: center.lng);
  }

  Future<void> _flyTo(double lat, double lng) => _map?.flyTo(
        CameraOptions(
          center: Point(coordinates: Position(lng, lat)),
          zoom: 13,
        ),
        MapAnimationOptions(duration: 800),
      ) ??
      Future.value();

  Future<void> _recenter() =>
      ref.read(kooraMapViewModelProvider.notifier).recenterOnUser();

  @override
  Widget build(BuildContext context) {
    ref.listen(
      kooraMapViewModelProvider.select((s) => s.markers),
      (_, markers) => _syncAnnotations(markers),
    );

    // Move the camera whenever the resolved location target changes.
    ref.listen(
      kooraMapViewModelProvider.select((s) => s.cameraTarget),
      (_, target) {
        if (target != null) {
          _flyTo(target.lat, target.lng);
        }
      },
    );

    final filter = ref.watch(
      kooraMapViewModelProvider.select((s) => s.filter),
    );

    return Scaffold(
      body: Stack(
        children: [
          MapWidget(
            styleUri: MapboxStyles.DARK,
            cameraOptions: CameraOptions(
              center: Point(coordinates: Position(_initialLng, _initialLat)),
              zoom: 12,
            ),
            onMapCreated: _onMapCreated,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(context.dimensions.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const KooraMapHeader(),
                  SizedBox(height: context.dimensions.mediumH),
                  MapFilterChips(
                    selected: filter,
                    onSelected: _onFilterSelected,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: context.dimensions.medium,
            bottom: context.dimensions.xLargeH,
            child: FloatingActionButton.small(
              heroTag: 'koora_map_recenter',
              backgroundColor: context.colors.surface,
              onPressed: _recenter,
              child: Icon(Icons.my_location, color: context.colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
