import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:koora_kick/utils/logger/location_logs.dart';
import 'package:talker/talker.dart';

/// A [Logger] implementation backed by the Talker library.
///
/// Talker provides pretty-printed, colour-coded console output with
/// collapsible log history — ideal for debugging location events in
/// development.  In production the log history is still available for
/// in-app inspection via [TalkerScreen] if you choose to expose it.
class AppTalkerLogger implements Logger {
  AppTalkerLogger()
    : _talker = Talker(
        settings: TalkerSettings(
          colors: {
            LocationUpdateLog.getKey: LocationUpdateLog.getPen,
            GeofenceEventLog.getKey: GeofenceEventLog.getPen,
            MotionEventLog.getKey: MotionEventLog.getPen,
            LocationServiceLog.getKey: LocationServiceLog.getPen,
            LocationStatusLog.getKey: LocationStatusLog.getPen,
          },
          titles: {
            LocationUpdateLog.getKey: LocationUpdateLog.getTitle,
            GeofenceEventLog.getKey: GeofenceEventLog.getTitle,
            MotionEventLog.getKey: MotionEventLog.getTitle,
            LocationServiceLog.getKey: LocationServiceLog.getTitle,
            LocationStatusLog.getKey: LocationStatusLog.getTitle,
          },
        ),
      );

  final Talker _talker;

  /// Expose the underlying [Talker] instance so callers can attach
  /// [TalkerScreen] or route logs to other observers if needed.
  Talker get talker => _talker;

  /// Log a fully custom [TalkerLog] subclass — e.g. [LocationUpdateLog].
  void logCustom(TalkerLog log) => _talker.logCustom(log);

  @override
  void debug(String message, {Map<String, dynamic>? data}) {
    _talker.debug(_withMeta(message, data));
  }

  @override
  void info(String message, {Map<String, dynamic>? data}) {
    _talker.info(_withMeta(message, data));
  }

  @override
  void warning(String message, {Map<String, dynamic>? data}) {
    _talker.warning(_withMeta(message, data));
  }

  @override
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, dynamic>? data,
  }) {
    _talker.handle(
      error ?? Exception(message),
      stackTrace,
      _withMeta(message, data),
    );
  }

  String _withMeta(String message, Map<String, dynamic>? data) {
    if (data == null || data.isEmpty) return message;
    final meta = data.entries.map((e) => '${e.key}: ${e.value}').join(', ');
    return '$message | $meta';
  }
}
