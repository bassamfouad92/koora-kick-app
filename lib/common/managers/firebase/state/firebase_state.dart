import 'package:koora_kick/common/enum/app_permission_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_state.freezed.dart';

@freezed
sealed class FirebaseState with _$FirebaseState {
  const factory FirebaseState({
    String? fcmToken,
    @Default(false) bool isInitialized,
    @Default(AppPermissionStatus.loading) AppPermissionStatus permissionStatus,
    String? errorMessage,
    @Default(false) bool isLoading,
  }) = _FirebaseState;
}