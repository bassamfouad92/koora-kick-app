import 'dart:async';
import 'dart:io';
import 'package:koora_kick/common/enum/app_permission_enum.dart';
import 'package:koora_kick/common/services/permission_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart' as AppSettings;

final notificationServiceProvider =
Provider<NotificationService>((ref) => NotificationService());

class NotificationService implements PermissionService {
  final FlutterLocalNotificationsPlugin _localNotifications =
  FlutterLocalNotificationsPlugin();

  FirebaseMessaging get _messaging => FirebaseMessaging.instance;

  final StreamController<AppPermissionStatus>
  _permissionController =
  StreamController.broadcast();

  @override
  Stream<AppPermissionStatus> get statusStream =>
      _permissionController.stream;

  Future<AppPermissionStatus> checkPermission() async {
    final settings =
    await _messaging.getNotificationSettings();

    final status =
    _mapStatus(settings.authorizationStatus);
    _permissionController.add(status);
    return status;
  }

  @override
  Future<AppPermissionStatus> requestPermission() async {
    // Explicitly request iOS local notification permissions
    if (Platform.isIOS) {
      final iosResult = await _localNotifications
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }

    final current = await _messaging.getNotificationSettings();

    if (current.authorizationStatus == AuthorizationStatus.denied) {
      _permissionController.add(AppPermissionStatus.denied);
      return AppPermissionStatus.denied;
    }

    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    final status = _mapStatus(settings.authorizationStatus);
    _permissionController.add(status);
    return status;
  }

  AppPermissionStatus _mapStatus(
      AuthorizationStatus status) {
    switch (status) {
      case AuthorizationStatus.authorized:
      case AuthorizationStatus.provisional:
        return AppPermissionStatus.granted;
      default:
        return AppPermissionStatus.denied;
    }
  }

  Future<void> initLocalNotifications(
      void Function(String?) onTap) async {
    const androidInit =
    AndroidInitializationSettings(
        '@mipmap/ic_launcher');

    const iosInit = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    // Create high importance channel for Android
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await _localNotifications.initialize(
      settings: const InitializationSettings(
          android: androidInit, iOS: iosInit),
      onDidReceiveNotificationResponse:
          (details) {
        onTap(details.payload);
      },
    );
  }

  void showNotification({RemoteMessage? message, String? title, String? body, String? route}) {
    final String? finalTitle = title ?? message?.notification?.title;
    final String? finalBody = body ?? message?.notification?.body;
    final String? finalPayload = route ?? message?.data['route'];

    const androidDetails = AndroidNotificationDetails(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
    );

    _localNotifications.show(
      id: message?.hashCode ?? DateTime.now().millisecond,
      title: finalTitle,
      body: finalBody,
      notificationDetails: const NotificationDetails(
        android: androidDetails,
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          presentBanner: true,
          presentList: true,
        ),
      ),
      payload: finalPayload,
    );
  }

  Future<void> openNotificationSettings() async {
    if (Platform.isIOS) {
      await AppSettings.openAppSettings();
    } else {
      await AppSettings.openAppSettings();
    }
  }

  void dispose() {
    _permissionController.close();
  }
}
