import 'dart:async';
import 'dart:ui' as ui;
import 'package:koora_kick/common/widgets/map/adapters/map_adapter.dart';
import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:koora_kick/common/widgets/map/providers/map_providers.dart';
import 'package:koora_kick/common/widgets/map/models/map_state.dart'
    show MapState;
import 'package:koora_kick/common/widgets/map/models/map_widget_data.dart';
import 'package:koora_kick/common/widgets/map/utils/route_color_mapper.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as GMap;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:koora_kick/app/provider/app_settings_provider.dart';
import 'package:map_themes/map_themes.dart';

class GoogleMapAdapter extends MapAdapter {
  static final Map<String, GMap.BitmapDescriptor> _markerIconCache = {};

  @override
  Widget buildMap({
    required WidgetRef ref,
    required MapWidgetData config,
    required MapState mapState,
  }) =>
      _GoogleMapView(config: config, mapState: mapState, ref: ref);
}

class _GoogleMapView extends ConsumerStatefulWidget {
  const _GoogleMapView({
    required this.config,
    required this.mapState,
    required this.ref,
    super.key,
  });

  final MapWidgetData config;
  final MapState mapState;
  final WidgetRef ref;

  @override
  ConsumerState<_GoogleMapView> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends ConsumerState<_GoogleMapView> {
  final _controller = Completer<GMap.GoogleMapController>();
  final MapThemeManager _themeManager = MapThemeManager();

  @override
  void initState() {
    super.initState();
    _themeManager.initialize();
  }

  @override
  void dispose() {
    _themeManager.dispose();
    super.dispose();
  }

  // -----------------------------
  //  BUILD GOOGLE MAP
  // -----------------------------

  @override
  Widget build(BuildContext context) {
    final mapState = widget.mapState;
    final mapService = ref.read(mapServiceProvider);

    final combinedMarkers = <MapMarkerData>{};
    combinedMarkers.addAll(mapState.markers);

    if (widget.config.originMarker != null) {
      combinedMarkers.add(widget.config.originMarker!);
    }
    if (widget.config.destinationMarker != null) {
      combinedMarkers.add(widget.config.destinationMarker!);
    }
    if (widget.config.middleMarkers != null) {
      combinedMarkers.addAll(widget.config.middleMarkers!);
    }

    // Determine Map Theme based on app settings
    final appSettings = ref.watch(appSettingsNotifierProvider).valueOrNull;
    final isDarkMode = appSettings?.themeMode == 'dark';

    if (_themeManager.isInitialized) {
      _themeManager.setThemeByEnum(isDarkMode ? MapStyleTheme.night : MapStyleTheme.standard);
    }

    return FutureBuilder<Set<GMap.Marker>>(
      future: _convertMarkers(combinedMarkers),
      builder: (context, snapshot) {
        final googleMarkers = snapshot.data ?? {};

        return ListenableBuilder(
          listenable: _themeManager,
          builder: (context, _) => GMap.GoogleMap(
              initialCameraPosition: GMap.CameraPosition(
                target: GMap.LatLng(
                  mapState.currentLocation.latitude,
                  mapState.currentLocation.longitude,
                ),
                zoom: 14.5,
              ),
              onMapCreated: (controller) {
                _controller.complete(controller);
                mapService.setController(controller);
              },
              markers: googleMarkers,
              polylines: _convertPolylines(mapState.polylines),
              myLocationEnabled: false,
              myLocationButtonEnabled: false,
              trafficEnabled: false,
              style: _themeManager.currentStyleJson,
            ),
        );
      },
    );
  }

  Future<Set<GMap.Marker>> _convertMarkers(Set<MapMarkerData> markers) async {
    final futures = markers.map(toGoogleMarker);
    return Set.from(await Future.wait(futures));
  }

  Set<GMap.Polyline> _convertPolylines(Set<MapRouteData> polylines) => polylines
      .map(
        (routeSpec) => GMap.Polyline(
          polylineId: GMap.PolylineId(routeSpec.routeId),
          points: routeSpec.coordinates
              .map(
                (routeSpec) =>
                    GMap.LatLng(routeSpec.latitude, routeSpec.longitude),
              )
              .toList(),
          color: RouteColorMapper.toUiColor(context, routeSpec.color),
          width: 4,
        ),
      )
      .toSet();

  Future<GMap.Marker> toGoogleMarker(MapMarkerData spec) async {
    final assetPath = spec.icon as String;
    GMap.BitmapDescriptor icon;

    // Cache key including number if present
    final cacheKey = '$assetPath-${spec.scale}-${spec.number ?? "no_num"}';
    
    if (GoogleMapAdapter._markerIconCache.containsKey(cacheKey)) {
      icon = GoogleMapAdapter._markerIconCache[cacheKey]!;
    } else {
      icon = await _createCustomMarkerBitmap(
        assetPath,
        spec.scale,
        spec.number,
      );
      GoogleMapAdapter._markerIconCache[cacheKey] = icon;
    }

    return GMap.Marker(
      markerId: GMap.MarkerId(spec.id),
      position: GMap.LatLng(spec.position.latitude, spec.position.longitude),
      icon: icon,
      anchor: const Offset(0.5, 0.5),
      rotation: spec.id == 'live_vehicle_id' ? spec.rotation : 0.0,
    );
  }

  Future<GMap.BitmapDescriptor> _createCustomMarkerBitmap(
      String assetName,
      double scale,
      int? number,
      ) async {

    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    ui.Image baseImage;

    if (assetName.endsWith('.svg')) {
      final string = await rootBundle.loadString(assetName);
      final pictureInfo = await vg.loadPicture(SvgStringLoader(string), null);
      final size = pictureInfo.size;
      final width = (size.width * scale * devicePixelRatio).toInt();
      final height = (size.height * scale * devicePixelRatio).toInt();
      baseImage = await pictureInfo.picture.toImage(width, height);
      pictureInfo.picture.dispose();
    } else {
      final bytes = (await rootBundle.load(assetName)).buffer.asUint8List();
      final codec = await ui.instantiateImageCodec(bytes);
      final frame = await codec.getNextFrame();
      final rawImage = frame.image;
      
      // For PNG, we might want to scale it if spec.scale != 1.0 (or just rely on DPR)
      // Usually markers need scaling. Let's respect spec.scale * DPR.
      // But standard PNG loading gives native size. 
      // Unlike SVG, we can't "rasterize" at scale. We must draw scale on canvas.
      baseImage = rawImage;
    }

    // Prepare helper variables
    // SVG is already sized to (targetWidth, targetHeight).
    // PNG is native size.
    
    final outputWidth = assetName.endsWith('.svg') 
        ? baseImage.width.toDouble() 
        : (baseImage.width * scale * devicePixelRatio);
        
    final outputHeight = assetName.endsWith('.svg') 
        ? baseImage.height.toDouble() 
        : (baseImage.height * scale * devicePixelRatio);

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);

    // Draw Base Image
    // Using drawImageRect to handle scaling for PNGs if needed. For SVG it's 1:1.
    canvas.drawImageRect(
      baseImage,
      Rect.fromLTWH(0, 0, baseImage.width.toDouble(), baseImage.height.toDouble()),
      Rect.fromLTWH(0, 0, outputWidth, outputHeight),
      Paint()..filterQuality = FilterQuality.high,
    );

    // Draw Number if present
    if (number != null) {
      final textScale = 0.9 * devicePixelRatio; // Scale text with marker
      final tp = TextPainter(
        text: TextSpan(
          text: '$number',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14 * textScale,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();

      // Center text
      tp.paint(
        canvas,
        Offset(
          (outputWidth - tp.width) / 2,
          (outputHeight - tp.height) / 2,
        ),
      );
    }

    final finalImage = await recorder.endRecording().toImage(
      outputWidth.toInt(), 
      outputHeight.toInt(),
    );
    
    final byteData = await finalImage.toByteData(format: ui.ImageByteFormat.png);

    return GMap.BitmapDescriptor.bytes(
      byteData!.buffer.asUint8List(),
      imagePixelRatio: devicePixelRatio,
    );
  }
}
