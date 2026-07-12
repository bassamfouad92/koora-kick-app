import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
sealed class DashboardStatus with _$DashboardStatus {
  const factory DashboardStatus.initial() = _Initial;
  const factory DashboardStatus.loading() = _Loading;
  const factory DashboardStatus.loaded() = _Loaded;
  const factory DashboardStatus.error(AppError error) = _Error;
}

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(DashboardStatus.initial()) DashboardStatus status,
    @Default([]) List<DashboardSection> sections,
  }) = _DashboardState;
}
