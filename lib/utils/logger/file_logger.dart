import 'dart:io';
import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';

class FileLogger implements Logger {
  FileLogger._internal();
  static final FileLogger instance = FileLogger._internal();

  File? _logFile;
  final _dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');

  Future<void> init() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      _logFile = File('${directory.path}/app_logs.txt');
      
      // Clear logs if file is too large (> 5MB)
      if (await _logFile!.exists()) {
        final size = await _logFile!.length();
        if (size > 5 * 1024 * 1024) {
          await _logFile!.writeAsString('--- Logs cleared due to size limits ---\n');
        }
      }
      
      await _writeLine('--- Logger Initialized ---');
    } catch (e) {
      print('Failed to initialize FileLogger: $e');
    }
  }

  Future<void> _writeLine(String line) async {
    if (_logFile == null) return;
    try {
      final timestamp = _dateFormat.format(DateTime.now());
      await _logFile!.writeAsString(
        '[$timestamp] $line\n',
        mode: FileMode.append,
        flush: true,
      );
    } catch (e) {
      print('Error writing to log file: $e');
    }
  }

  @override
  void debug(String message, {Map<String, dynamic>? data}) {
    _writeLine('DEBUG: $message ${data ?? ""}');
  }

  @override
  void info(String message, {Map<String, dynamic>? data}) {
    _writeLine('INFO: $message ${data ?? ""}');
  }

  @override
  void warning(String message, {Map<String, dynamic>? data}) {
    _writeLine('WARNING: $message ${data ?? ""}');
  }

  @override
  void error(String message, {Object? error, StackTrace? stackTrace, Map<String, dynamic>? data}) {
    _writeLine('ERROR: $message | Error: $error | Data: ${data ?? ""}');
  }

  Future<String> readLogs() async {
    if (_logFile == null || !await _logFile!.exists()) return 'No logs found.';
    return await _logFile!.readAsString();
  }

  Future<void> clearLogs() async {
    if (_logFile != null && await _logFile!.exists()) {
      await _logFile!.writeAsString('--- Logs cleared ---\n');
    }
  }
  
  Future<String?> getLogFilePath() async {
    if (_logFile == null) return null;
    return _logFile!.path;
  }
}
