import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/services/location_service.dart';
import 'package:koora_kick/features/koora_map/data/repositories/map_repository.dart';
import 'package:koora_kick/features/koora_map/domain/entities/map_marker_model.dart';
import 'package:koora_kick/features/koora_map/presentation/state/koora_map_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'koora_map_view_model.g.dart';

@riverpod
class KooraMapViewModel extends _$KooraMapViewModel {
  late final _mapRepository = ref.read(mapRepositoryProvider);
  late final _locationService = ref.read(locationServiceProvider);

  /// Riyadh — fallback center when the user's location is unavailable.
  static const defaultLat = 24.7136;
  static const defaultLng = 46.6753;

  /// TEMP: force every marker into a "now showing" screening so the pulsing
  /// ring + title label can be tested without live data. Set back to false
  /// (or delete) before shipping.
  static const _debugForceNowShowing = true;

  @override
  KooraMapState build() {
    Future.microtask(_loadFromCurrentLocation);
    return const KooraMapState();
  }

  /// Resolves the device location (falls back to Riyadh) and loads markers
  /// around it. The resolved center is exposed on the state so the screen
  /// can move the camera there.
  Future<void> _loadFromCurrentLocation() async {
    final location = await _locationService.getCurrentLocation();
    final lat = location?.lat ?? defaultLat;
    final lng = location?.lng ?? defaultLng;
    state = state.copyWith(
      cameraTarget: (lat: lat, lng: lng),
      hasUserLocation: location != null,
    );
    await loadMarkers(lat: lat, lng: lng);
  }

  /// Re-resolves the device location and recenters/reloads — used by the
  /// "my location" button.
  Future<void> recenterOnUser() => _loadFromCurrentLocation();

  /// Fetches markers around [lat]/[lng] for the current filter. Called on
  /// first load and whenever the map is recentered.
  Future<void> loadMarkers({required double lat, required double lng}) async {
    state = state.copyWith(status: const KooraMapStatus.loading());

    final result = await _mapRepository.getMarkers(
      lat: lat,
      lng: lng,
      type: state.filter.markerType,
    );

    result.when(
      success: (markers) => state = state.copyWith(
        status: const KooraMapStatus.loaded(),
        markers: _debugForceNowShowing ? _forceNowShowing(markers) : markers,
      ),
      error: (exception) => state = state.copyWith(
        status: KooraMapStatus.error(AppError.api(message: exception.message)),
      ),
    );
  }

  Future<void> setFilter(
    MapFilter filter, {
    required double lat,
    required double lng,
  }) async {
    if (state.filter == filter) {
      return;
    }
    state = state.copyWith(filter: filter, selectedMarker: null);
    await loadMarkers(lat: lat, lng: lng);
  }

  void selectMarker(MapMarkerModel? marker) {
    state = state.copyWith(selectedMarker: marker);
  }

  /// TEMP debug helper — see [_debugForceNowShowing]. Gives every marker a
  /// now-showing screening (reusing its own or synthesising one).
  List<MapMarkerModel> _forceNowShowing(List<MapMarkerModel> markers) =>
      markers
          .map(
            (marker) => marker.copyWith(
              screening: (marker.screening ??
                      MarkerScreening(title: marker.name))
                  .copyWith(nowShowing: true),
            ),
          )
          .toList();
}
