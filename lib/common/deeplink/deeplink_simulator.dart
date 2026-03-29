import 'dart:async';
import 'package:koora_kick/common/services/notification_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deeplink_simulator.g.dart';

@riverpod
class DeeplinkSimulator extends _$DeeplinkSimulator {
  @override
  void build() {}

  /// Simulates a notification that arrives after 10 seconds.
  /// Click on this notification will trigger the deeplink manager.
  void simulateDelayedNotification({
    String title = 'Test Deeplink',
    String body = 'Click to open ride details ',
    String route = 'ride?id=6979dd90e39153001d87a16e',
    Duration delay = const Duration(seconds: 10),
  }) {
    debugPrint('Deeplink Simulation: Notification will appear in ${delay.inSeconds} seconds...');
    
    Timer(delay, () {
      final notificationService = ref.read(notificationServiceProvider);
      notificationService.showNotification(
        title: title,
        body: body,
        route: route,
      );
      debugPrint('Deeplink Simulation: Notification shown with route: $route');
    });
  }
}
