// map_view_model.dart file
import 'package:koora_kick/common/services/route_calculation_service.dart';
import 'package:koora_kick/common/widgets/map/services/map_service.dart';
import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:koora_kick/common/widgets/map/providers/map_providers.dart';
import 'package:koora_kick/common/widgets/map/models/map_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_view_model.g.dart';

@Riverpod(keepAlive: false)
class MapViewModel extends _$MapViewModel {
  late final MapService _mapService;

  @override
  MapState build() {
    _mapService = ref.watch(mapServiceProvider);
    _initializeMapLogic();
    ref.onDispose(() {
      _mapService.dispose();
    });
    return const MapState();
  }

  void _initializeMapLogic() async {
    await _mapService.mapReady;
  }
}
