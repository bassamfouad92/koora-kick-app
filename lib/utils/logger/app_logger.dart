import 'package:koora_kick/utils/logger/crashlytics_logger.dart';
import 'package:koora_kick/utils/logger/console_logger.dart';
import 'package:koora_kick/utils/logger/talker_logger.dart';
import 'package:koora_kick/utils/logger/file_logger.dart';
import 'package:talker/talker.dart' hide TalkerLogger;

abstract interface class Logger {
  void debug(String message, {Map<String, dynamic>? data});
  void info(String message, {Map<String, dynamic>? data});
  void warning(String message, {Map<String, dynamic>? data});
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, dynamic>? data,
  });
}

class AppLogger implements Logger {
  AppLogger._internal() : _talkerLogger = AppTalkerLogger(), _loggers = [] {
    _loggers.addAll([
      ConsoleLogger(),
      CrashlyticsLogger(),
      _talkerLogger,
      FileLogger.instance,
    ]);
  }

  static final AppLogger instance = AppLogger._internal();

  final AppTalkerLogger _talkerLogger;
  final List<Logger> _loggers;

  /// Access the underlying [Talker] instance — e.g. to attach a TalkerScreen
  /// in your debug / settings panel.
  Talker get talker => _talkerLogger.talker;

  /// Log a custom [TalkerLog] subclass (e.g. [LocationUpdateLog], [GeofenceEventLog]).
  /// Only routed through Talker — not dispatched to Crashlytics / ConsoleLogger.
  void logCustom(TalkerLog log) {
    _talkerLogger.logCustom(log);
  }

  Future<void> init() async {
    await FileLogger.instance.init();
  }

  Future<String> getLogs() => FileLogger.instance.readLogs();
  
  Future<void> clearLogs() => FileLogger.instance.clearLogs();
  
  Future<String?> getLogFilePath() => FileLogger.instance.getLogFilePath();

  void _dispatch(void Function(Logger logger) action) {
    for (final logger in _loggers) {
      action(logger);
    }
  }

  @override
  void debug(String message, {Map<String, dynamic>? data}) =>
      _dispatch((l) => l.debug(message, data: data));

  @override
  void info(String message, {Map<String, dynamic>? data}) =>
      _dispatch((l) => l.info(message, data: data));

  @override
  void warning(String message, {Map<String, dynamic>? data}) =>
      _dispatch((l) => l.warning(message, data: data));

  @override
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, dynamic>? data,
  }) => _dispatch(
    (l) => l.error(message, error: error, stackTrace: stackTrace, data: data),
  );
}
