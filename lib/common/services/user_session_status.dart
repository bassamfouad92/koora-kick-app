import 'package:koora_kick/common/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_session_status.freezed.dart';

@freezed
sealed class UserSessionStatus with _$UserSessionStatus {
  const factory UserSessionStatus.initial() = InitialStatus;
  const factory UserSessionStatus.unauthenticated() = UnauthenticatedStatus;
  const factory UserSessionStatus.authenticated({required User user}) = AuthenticatedStatus;
  const factory UserSessionStatus.unverified({required User user, required Token token}) = UnverifiedStatus;
  const factory UserSessionStatus.resettingPasscode({required String phone, required Token token}) = ResettingPasscodeStatus;
}
