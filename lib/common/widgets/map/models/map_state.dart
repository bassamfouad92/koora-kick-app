import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_state.freezed.dart';

const defaultLocation = LatLng(25.156680, 55.262122);

enum MapFocusMode { route, user }

@freezed
sealed class MapState with _$MapState {
  const factory MapState({
    @Default(defaultLocation) LatLng currentLocation,
    @Default({}) Set<MapMarkerData> markers,
    @Default({}) Set<MapRouteData> polylines,
    @Default(true) bool isAutoCentering,
  }) = _MapState;
}
