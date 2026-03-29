import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class CrashlyticsLogger implements Logger {
  bool get _isInitialized => Firebase.apps.isNotEmpty;

  @override
  void debug(String message, {Map<String, dynamic>? data}) {
    if (!_isInitialized) return;
    FirebaseCrashlytics.instance.log(message);
  }

  @override
  void info(String message, {Map<String, dynamic>? data}) {
    if (!_isInitialized) return;
    FirebaseCrashlytics.instance.log(message);
  }

  @override
  void warning(String message, {Map<String, dynamic>? data}) {
    if (!_isInitialized) return;
    FirebaseCrashlytics.instance.log(message);
  }

  @override
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, dynamic>? data,
  }) async {
    if (!_isInitialized) return;
    
    if (data != null) {
      data.forEach((key, value) {
        FirebaseCrashlytics.instance.setCustomKey(key, value.toString());
      });
    }

    await FirebaseCrashlytics.instance.recordError(
      error ?? message,
      stackTrace,
      reason: message,
    );
  }
}
