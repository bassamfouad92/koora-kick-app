import 'package:koora_kick/app/provider/app_settings_provider.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_section.dart';
import 'package:koora_kick/features/dashboard/domain/usecase/dashboard_use_case.dart';
import 'package:koora_kick/features/dashboard/presentation/states/dashboard_state.dart';
import 'package:koora_kick/features/dashboard/presentation/mappers/dashboard_section_mapper.dart';
import 'package:koora_kick/features/dashboard/presentation/models/dashboard_section_item.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardProvider =
    StateNotifierProvider<DashboardViewModel, DashboardState>((ref) {
      final useCase = ref.watch(dashboardUseCaseProvider);
      final settings = ref.watch(appSettingsNotifierProvider).valueOrNull ?? const AppSettingsData();
      return DashboardViewModel(useCase, settings, ref);
    });

class DashboardViewModel extends StateNotifier<DashboardState> {
  DashboardViewModel(this.dashboardUseCase, this.settings, this._ref)
    : super(const DashboardState.initial()) {
    loadDashboard();
  }

  final DashboardUseCase dashboardUseCase;
  final AppSettingsData settings;
  final Ref _ref;
  final _mapper = DashboardSectionMapper();

  Future<void> loadDashboard() async {
    state = const DashboardState.loading();
    await _fetchAndUpdate();
  }

  /// Refreshes data silently without transitioning to the [DashboardState.loading]
  Future<void> silentRefresh() => _fetchAndUpdate();

  Future<void> _fetchAndUpdate() async {
    final results = await Future.wait<Result<Object?>>([
      dashboardUseCase.getProfile(),
      dashboardUseCase.getDashboardData(),
    ]);

    if (!mounted) return;

    final profileResult = results[0] as Result<User>;
    final sectionsResult = results[1] as Result<List<DashboardSection>>;

    state = sectionsResult.when(
      success: (sectionList) {
        final items = sectionList
            .map((section) =>
                _mapper.map(section, settings.preferredTimeFormat))
            .whereType<DashboardSectionItem>()
            .toList();

        return DashboardState.loaded(
          profileStatus: profileResult.when(
            success: ProfileStatus.success,
            error: (exception) => ProfileStatus.error(_mapException(exception)),
          ),
          sections: items,
        );
      },
      error: (exception) => DashboardState.error(
        _mapException(exception),
      ),
    );
  }

  AppError _mapException(AppException exception) => exception.when(
    connectivity: () => const AppError.network(),
    unauthorized: () => const AppError.api(message: 'Unauthorized'),
    errorWithMessage: (String msg) => AppError.api(message: msg),
    error: () => const AppError.api(message: 'Operation failed'),
    api: (String msg, int? code, _) => AppError.api(message: msg, code: code),
  );
}
