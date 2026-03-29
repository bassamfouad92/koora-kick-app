import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:koora_kick/common/widgets/map/utils/map_extensions.dart';
import 'package:koora_kick/utils/units/unit_builder.dart';
import 'package:koora_kick/utils/units/unit_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'station_tracker.freezed.dart';
part 'station_tracker.g.dart';

@riverpod
class StationTracker extends _$StationTracker {
  static const double proximityThresholdMeters = 50.0;
  static final double _proximityThresholdKm =
      UnitBuilder.fromMeters(proximityThresholdMeters)
          .to(UnitType.kilometers)
          .value
          .value;

  List<LatLng> _stations = [];
  int _currentStationIndex = 0;

  @override
  void build() {}

  void initialize(List<LatLng> stations) {
    _stations = stations;
    _currentStationIndex = 0;
  }

  /// Finds the next station to navigate to based on current location
  StationResult findNextStation(LatLng currentLocation) {
    if (_stations.isEmpty) {
      return const StationResult.noStations();
    }

    if (_currentStationIndex >= _stations.length) {
      return const StationResult.allCompleted();
    }

    final station = _stations[_currentStationIndex];
    final distanceKm = currentLocation.distanceKmTo(station);
    final isLastStation = _currentStationIndex == _stations.length - 1;
    
    final bool hasReachedStation = distanceKm <= _proximityThresholdKm;

    if (hasReachedStation) {
      if (!isLastStation) {
        // Increment index for the NEXT call, but target current station for THIS call
        _currentStationIndex++;
        
        // This ensures the current station is "confirmed" in the result stream 
        // before we jump to the next one in the following location update.
        return StationResult.found(
          location: station,
        );
      } else {
        return const StationResult.allCompleted();
      }
    }

    return StationResult.found(
      location: station,
    );
  }

  void reset() {
    _currentStationIndex = 0;
  }

  int get currentIndex => _currentStationIndex;
  int get totalStations => _stations.length;
}

@freezed
sealed class StationResult with _$StationResult {
  const factory StationResult.found({
    required LatLng location,
  }) = _StationFound;

  const factory StationResult.allCompleted() = _AllCompleted;
  const factory StationResult.noStations() = _NoStations;
}
