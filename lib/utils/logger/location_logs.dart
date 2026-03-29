import 'package:ansicolor/ansicolor.dart';
import 'package:talker/talker.dart';

// ---------------------------------------------------------------------------
// Location Service — Custom Talker Log Types
//
// Each class maps to one distinct category of location event.
// They all share a uniform API so callers just do:
//
//   talker.logCustom(LocationUpdateLog(lat: .., lng: ..));
//   talker.logCustom(GeofenceEventLog(id: .., action: 'ENTER', ..));
//   talker.logCustom(LocationServiceLog('Initializing...'));
//   talker.logCustom(MotionEventLog(isMoving: true, lat: .., lng: ..));
//
// ---------------------------------------------------------------------------

/// Logs a raw GPS coordinate update from the background plugin.
class LocationUpdateLog extends TalkerLog {
  LocationUpdateLog({
    required double lat,
    required double lng,
    double? accuracy,
    double? speed,
    String? timestamp,
  }) : super(
         '[LocationUpdate] '
         'lat=$lat, lng=$lng'
         '${accuracy != null ? ', acc=${accuracy.toStringAsFixed(1)}m' : ''}'
         '${speed != null ? ', speed=${speed.toStringAsFixed(1)}m/s' : ''}'
         '${timestamp != null ? ', ts=$timestamp' : ''}',
       );

  static String get getTitle => 'Location';
  static String get getKey => 'location_update';
  static AnsiPen get getPen => AnsiPen()..cyan(bold: true);

  @override
  String get title => getTitle;
  @override
  String get key => getKey;
  @override
  AnsiPen get pen => getPen;
}

/// Logs a geofence enter / exit / dwell event.
class GeofenceEventLog extends TalkerLog {
  GeofenceEventLog({
    required String identifier,
    required String action,
    double? lat,
    double? lng,
  }) : super(
         '[GeofenceEvent] '
         '$action → $identifier'
         '${lat != null && lng != null ? ' @ ($lat, $lng)' : ''}',
       );

  static String get getTitle => 'Geofence';
  static String get getKey => 'geofence_event';
  static AnsiPen get getPen => AnsiPen()..magenta(bold: true);

  @override
  String get title => getTitle;
  @override
  String get key => getKey;
  @override
  AnsiPen get pen => getPen;
}

/// Logs a motion-change event (device started / stopped moving).
class MotionEventLog extends TalkerLog {
  MotionEventLog({required bool isMoving, double? lat, double? lng})
    : super(
        '[MotionEvent] '
        '${isMoving ? '▶ Moving' : '⏸ Stationary'}'
        '${lat != null && lng != null ? ' @ ($lat, $lng)' : ''}',
      );

  static String get getTitle => 'Motion';
  static String get getKey => 'motion_event';
  static AnsiPen get getPen => AnsiPen()..yellow(bold: true);

  @override
  String get title => getTitle;
  @override
  String get key => getKey;
  @override
  AnsiPen get pen => getPen;
}

/// Logs lifecycle events of the location service (init, start, stop, resume …).
class LocationServiceLog extends TalkerLog {
  LocationServiceLog(String message, {Map<String, dynamic>? data})
    : super(
        '[LocationService] $message'
        '${data != null && data.isNotEmpty ? ' | ${data.entries.map((e) => '${e.key}=${e.value}').join(', ')}' : ''}',
      );

  static String get getTitle => 'Service';
  static String get getKey => 'location_service';
  static AnsiPen get getPen => AnsiPen()..green(bold: true);

  @override
  String get title => getTitle;
  @override
  String get key => getKey;
  @override
  AnsiPen get pen => getPen;
}

/// Logs service status changes from the OS (e.g. GPS state, Location permissions).
class LocationStatusLog extends TalkerLog {
  LocationStatusLog({
    required bool enabled,
    required int status,
    required bool gps,
    required bool network,
  }) : super(
         '[StatusChange] '
         'enabled=$enabled, auth_status=$status, gps=$gps, network=$network',
       );

  static String get getTitle => 'Status';
  static String get getKey => 'location_status';
  static AnsiPen get getPen => AnsiPen()..blue(bold: true);

  @override
  String get title => getTitle;
  @override
  String get key => getKey;
  @override
  AnsiPen get pen => getPen;
}
