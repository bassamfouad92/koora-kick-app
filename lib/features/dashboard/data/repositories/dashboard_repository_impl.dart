import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/common/user/respository/user_repository.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_banner.dart';
import 'package:koora_kick/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) => DashboardRepositoryImpl(
    userRepository: ref.watch(userRepositoryProvider),
  ));

class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl({
    required this.userRepository,
  });
  final UserRepository userRepository;

  @override
  Future<Result<User>> getUserProfile() async => userRepository.getMe();

  @override
  Future<Result<List<DashboardBanner>>> getDashboardBanners() async => const Result.success([
      DashboardBanner(
        id: '1',
        text: const BannerText.titleAndSubtext(
          title: 'Documents expiring soon',
          subtext: 'Update now to stay active.',
        ),
        actionText: 'Review',
        type: 'danger',
      ),
      DashboardBanner(
        id: '2',
        text: const BannerText.titleAndSubtext(
          title: 'Need cash before payday?',
          subtext: 'Get your salary advance instantly.',
        ),
        actionText: 'Apply now',
        type: 'info',
      ),
    ]);
}
