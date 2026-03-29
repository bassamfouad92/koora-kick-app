import 'package:koora_kick/common/data/hive/offline_action_adapter.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveRegistrar {
  static Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    _registerAdapters();
  }

  static void _registerAdapters() {
    Hive.registerAdapter(OfflineActionAdapter());
  }
}
