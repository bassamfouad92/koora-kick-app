import 'package:koora_kick/common/constants/store_key.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/storage/user_store.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/config/feature_config.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_section.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_banner.dart';
import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardUseCaseProvider = Provider<DashboardUseCase>(
  (ref) => DashboardUseCase(
    ref,
    ref.watch(userStoreProvider),
    ref.watch(featureConfigProvider),
  ),
);

class DashboardUseCase {
  DashboardUseCase(this._ref, this.userStore, this.config);
  final FeatureConfig config;
  final Ref _ref;
  final UserStore userStore;

  Future<Result<User>> getProfile() async {
    final user = await userStore.fetch();
    return Result.success(user ?? const User(name: '--', email: '', phone: ''));
  }

  Future<Result<List<DashboardSection>>> getDashboardData() async {

    final prefs = _ref.read(sharedPreferencesProvider);
    final activeRideId = prefs.getString(StoreKey.activeRideId.name);

    final List<DashboardSection> sections = [
      if (config.isBannerEnabled)
        const DashboardSection.banner(
          data: DashboardBanner(
            id: '1',
            text: BannerText.titleAndSubtext(title: '', subtext: ''),
          ),
        ),
    ];

    return Result.success(sections);
  }
}
