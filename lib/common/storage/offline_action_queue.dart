import 'package:koora_kick/common/entities/offline_action.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'offline_action_queue.g.dart';

class OfflineActionQueue {
  static const String boxName = 'offline_actions_box';

  Future<void> addAction(OfflineAction action) async {
    final box = await Hive.openBox<OfflineAction>(boxName);
    await box.put(action.id, action);
  }

  Future<List<OfflineAction>> getActions() async {
    final box = await Hive.openBox<OfflineAction>(boxName);
    final actions = box.values.toList();
    actions.sort((a, b) => a.timestampMs.compareTo(b.timestampMs));
    return actions;
  }

  Future<void> removeAction(String id) async {
    final box = await Hive.openBox<OfflineAction>(boxName);
    await box.delete(id);
  }

  Future<void> clearAll() async {
    final box = await Hive.openBox<OfflineAction>(boxName);
    await box.clear();
  }
}

@riverpod
OfflineActionQueue offlineActionQueue(OfflineActionQueueRef ref) {
  return OfflineActionQueue();
}
