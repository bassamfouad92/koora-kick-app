import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_menu_item.dart';

part 'profile_state.freezed.dart';

@freezed
sealed class ProfileStatus with _$ProfileStatus {
  const factory ProfileStatus.loading() = ProfileLoading;
  const factory ProfileStatus.success(User profile) = ProfileSuccess;
  const factory ProfileStatus.error(AppError error) = ProfileError;
}

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.loading()) ProfileStatus status,
    @Default([]) List<ProfileMenuItem> menuItems,
  }) = _ProfileState;
}
