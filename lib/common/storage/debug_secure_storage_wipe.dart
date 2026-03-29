import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DebugSecureStorageWipe {
  static Future<void> wipe() async {
    if (!kDebugMode) return;
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
  }
}
