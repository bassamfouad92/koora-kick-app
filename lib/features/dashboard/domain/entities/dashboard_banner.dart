import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_banner.freezed.dart';

@freezed
sealed class DashboardBanner with _$DashboardBanner {
  const factory DashboardBanner({
    required String id,
    required BannerText text,
    String? actionText,
    String? type,
  }) = _DashboardBanner;
}
