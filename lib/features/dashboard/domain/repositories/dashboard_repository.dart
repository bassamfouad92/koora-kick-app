import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_banner.dart';

abstract interface class DashboardRepository {
  Future<Result<User>> getUserProfile();
  Future<Result<List<DashboardBanner>>> getDashboardBanners();
}
