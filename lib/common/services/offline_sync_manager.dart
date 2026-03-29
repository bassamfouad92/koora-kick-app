import 'dart:convert';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/services/connectivity_manager.dart';
import 'package:koora_kick/common/storage/offline_action_queue.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:koora_kick/utils/logger/app_logger.dart';

part 'offline_sync_manager.g.dart';

@Riverpod(keepAlive: true)
class OfflineSyncManager extends _$OfflineSyncManager {
  @override
  void build() {
    ref.listen(
      connectivityManagerProvider,
      (previous, next) {
        if (next.hasValue && next.value == ConnectivityState.connected) {
          _flushQueue();
        }
      },
    );
  }

  Future<void> _flushQueue() async {
    final queue = ref.read(offlineActionQueueProvider);
    final pendingActions = await queue.getActions();
  }
}
