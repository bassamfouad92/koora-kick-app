import 'dart:async';
import 'package:koora_kick/common/enum/app_permission_enum.dart';

abstract interface class PermissionService {
  Stream<AppPermissionStatus> get statusStream;
  Future<AppPermissionStatus> requestPermission();
}