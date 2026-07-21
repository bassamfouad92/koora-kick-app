import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/koora_map/data/mappers/map_marker_mapper.dart';
import 'package:koora_kick/features/koora_map/domain/entities/map_marker_model.dart';

/// `GET /map/markers` (public). Two modes — provide either [lat]+[lng]
/// (nearby, distance-sorted) or [cityId] (city browse).
class GetMapMarkersRequest extends HttpRequest<List<MapMarkerModel>> {
  GetMapMarkersRequest({
    this.lat,
    this.lng,
    this.radius,
    this.cityId,
    this.type,
  });

  final double? lat;
  final double? lng;

  /// km, default 10 (server), max 100.
  final double? radius;
  final String? cityId;

  /// Optional filter — restricts to a single [MapMarkerType].
  final MapMarkerType? type;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/map/markers';

  @override
  Map<String, dynamic>? get queryParams => {
        if (lat != null) 'lat': lat,
        if (lng != null) 'lng': lng,
        if (radius != null) 'radius': radius,
        if (cityId != null) 'cityId': cityId,
        if (type != null && type != MapMarkerType.unknown) 'type': type!.name,
      };

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<List<MapMarkerModel>> get mapper => MapMarkerListMapper();
}
