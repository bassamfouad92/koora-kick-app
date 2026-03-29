import 'package:koora_kick/common/managers/firebase/state/firebase_state.dart';
import 'package:koora_kick/common/deeplink/deeplink_handler.dart';
import 'package:koora_kick/common/deeplink/deeplink_manager.dart';
import 'package:koora_kick/common/services/notification_service.dart';
import 'package:koora_kick/firebase_options.dart';
import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_manager.g.dart';

@riverpod
class FirebaseManager extends _$FirebaseManager {
  late final NotificationService _notificationService = ref.read(notificationServiceProvider);

  @override
  FutureOr<FirebaseState> build() async {
    try {
      await initializeFirebase();
      await configureFirebaseServices();
      setupFirebaseServices();
      final state = await fetchInitialData();
      return state;
    } catch (e, stack) {
      debugPrint(stack.toString());
      rethrow;
    }
  }

  Future<void> initializeFirebase() async {
    try {
      await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          );
    } catch (e) {
      AppLogger.instance.info("Firebase not init$e");
    }
    AppLogger.instance.info("Firebase core initialized");
  }

  Future<void> configureFirebaseServices() async {
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await _notificationService.initLocalNotifications(
      (payload) {
        if (payload != null) {
          ref.read(deeplinkManagerProvider.notifier).handleDeeplink(
            payload,
            DeeplinkSource.notification,
          );
        }
      },
    );
  }

  void setupFirebaseServices() {
    setupCrashlytics();
    listenFCM();
  }

  Future<FirebaseState> fetchInitialData() async {
    final permissionStatus = await _notificationService.requestPermission();
    final token = await FirebaseMessaging.instance.getToken();
    AppLogger.instance.info("FCM Token: $token");

    return FirebaseState(
      isInitialized: true,
      isLoading: false,
      fcmToken: token,
      permissionStatus: permissionStatus,
    );
  }

  void setupCrashlytics() {
    AppLogger.instance.info("Firebase ready with Crashlytics");
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };

  }

  void listenFCM() {
    FirebaseMessaging.onMessage.listen((message) {
      _notificationService.showNotification(message: message);
      AppLogger.instance.info("FCM: Foreground message received");
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      AppLogger.instance.info("Background message received");
    });

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        AppLogger.instance.info("Terminated state message received");
      }
    });

    FirebaseMessaging.instance.onTokenRefresh.listen((token) {
      state.whenData((currentState) {
        state = AsyncValue.data(currentState.copyWith(fcmToken: token));
      });
    });
  }

  Future<void> updateFCMToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    state.whenData((currentState) {
      state = AsyncValue.data(currentState.copyWith(fcmToken: token));
    });
  }

  Future<void> deleteToken() async {
    await FirebaseMessaging.instance.deleteToken();
    state.whenData((currentState) {
      state = AsyncValue.data(currentState.copyWith(fcmToken: null));
    });
  }

  void showInternalNotification({
    required String title,
    required String body,
    String? route,
  }) {
    _notificationService.showNotification(
      title: title,
      body: body,
      route: route,
    );
  }
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}