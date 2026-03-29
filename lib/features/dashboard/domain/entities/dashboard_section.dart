import 'package:koora_kick/features/dashboard/domain/entities/alert_model.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_banner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_section.freezed.dart';

@freezed
sealed class DashboardSection with _$DashboardSection {
  const factory DashboardSection.banner({
    required DashboardBanner data,
  }) = DashboardBannerSection;

  const factory DashboardSection.alert({
    required AlertModel data,
    String? title,
  }) = DashboardAlertSection;
}
