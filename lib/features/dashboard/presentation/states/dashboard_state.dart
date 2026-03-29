import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/features/dashboard/presentation/models/dashboard_section_item.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.loaded({
    required List<DashboardSectionItem> sections,
    @Default(ProfileStatus.loading()) ProfileStatus profileStatus,
  }) = _Loaded;
  const factory DashboardState.error([AppError? error]) = _Error;
}