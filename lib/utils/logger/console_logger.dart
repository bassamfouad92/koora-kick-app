import 'package:koora_kick/utils/logger/app_logger.dart';

class ConsoleLogger implements Logger {
  @override
  void debug(String message, {Map<String, dynamic>? data}) {
    print('[DEBUG] $message ${_formatMeta(data)}');
  }

  @override
  void info(String message, {Map<String, dynamic>? data}) {
    print('[INFO] $message ${_formatMeta(data)}');
  }

  @override
  void warning(String message, {Map<String, dynamic>? data}) {
    print('[WARNING] $message ${_formatMeta(data)}');
  }

  @override
  void error(
      String message, {
        Object? error,
        StackTrace? stackTrace,
        Map<String, dynamic>? data,
      }) {
    print('[ERROR] $message');
    if (error != null) print('Error: $error');
    if (stackTrace != null) print(stackTrace);
    print(_formatMeta(data));
  }

  String _formatMeta(Map<String, dynamic>? metadata) {
    if (metadata == null || metadata.isEmpty) return '';
    return '| META: $metadata';
  }
}
