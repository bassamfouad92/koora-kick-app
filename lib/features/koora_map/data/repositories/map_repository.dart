import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/koora_map/data/requests/get_map_markers_request.dart';
import 'package:koora_kick/features/koora_map/domain/entities/map_marker_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class MapRepository {
  /// Nearby markers around [lat]/[lng]; optionally filtered by [type].
  Future<Result<List<MapMarkerModel>>> getMarkers({
    required double lat,
    required double lng,
    double? radius,
    MapMarkerType? type,
  });
}

final mapRepositoryProvider = Provider<MapRepository>(MapRepositoryImpl.new);

class MapRepositoryImpl implements MapRepository {
  MapRepositoryImpl(this._ref);

  final Ref _ref;

  late final _networkClient = _ref.read(networkProvider);

  @override
  Future<Result<List<MapMarkerModel>>> getMarkers({
    required double lat,
    required double lng,
    double? radius,
    MapMarkerType? type,
  }) async {
    final response = await _networkClient.execute(
      GetMapMarkersRequest(lat: lat, lng: lng, radius: radius, type: type),
    );
    return response.when(
      success: (markers) => Result.success(markers),
      error: (exception) => Result.error(exception),
    );
  }
}
