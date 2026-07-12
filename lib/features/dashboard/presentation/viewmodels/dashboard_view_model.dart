import 'dart:async';
import 'dart:math';

import 'package:koora_kick/common/channels/data/repositories/channel_repository.dart';
import 'package:koora_kick/common/channels/data/requests/get_channels_request.dart';
import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/dashboard/data/repositories/dashboard_repository_impl.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_section.dart';
import 'package:koora_kick/features/dashboard/domain/entities/match_model.dart';
import 'package:koora_kick/features/dashboard/domain/entities/news_item.dart';
import 'package:koora_kick/features/dashboard/presentation/states/dashboard_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_view_model.g.dart';

/// Scores are served from a server cache; the docs ask clients to poll
/// every 60s with random jitter while the feed is visible.
const _scoresPollInterval = Duration(seconds: 60);

@riverpod
class DashboardViewModel extends _$DashboardViewModel {
  Timer? _scoresTimer;

  @override
  DashboardState build() {
    Future.microtask(loadDashboard);

    _scoresTimer = Timer.periodic(
      _scoresPollInterval + Duration(seconds: Random().nextInt(10)),
      (_) => refreshScores(),
    );
    ref.onDispose(() => _scoresTimer?.cancel());

    return const DashboardState();
  }

  late final _channelRepository = ref.read(channelRepositoryProvider);
  late final _dashboardRepository = ref.read(dashboardRepositoryProvider);

  Future<void> loadDashboard() async {
    state = state.copyWith(status: const DashboardStatus.loading());

    final (channelsResult, scoresResult) = await (
      _channelRepository.getChannels(type: ChannelType.club),
      _dashboardRepository.getScores(),
    ).wait;

    final channels = channelsResult.when(
      success: (channels) => channels,
      error: (_) => <ChannelModel>[],
    );
    final matches = scoresResult.when(
      success: (snapshot) => _relevantMatches(snapshot),
      error: (_) => <MatchModel>[],
    );

    // Feed stays useful when a single call fails; error only when the
    // channels API — the only authenticated feed source — fails.
    final channelsFailed = channelsResult.when(
      success: (_) => false,
      error: (_) => true,
    );
    if (channelsFailed && matches.isEmpty) {
      final error = channelsResult.when<AppError?>(
        success: (_) => null,
        error: (exception) => AppError.api(message: exception.message),
      );
      state = state.copyWith(
        status: DashboardStatus.error(error ?? const AppError.network()),
      );
      return;
    }

    state = state.copyWith(
      status: const DashboardStatus.loaded(),
      sections: _buildSections(channels: channels, matches: matches),
    );
  }

  /// Silent background refresh of the match-updates section only.
  Future<void> refreshScores() async {
    final hasLoaded = state.status.maybeWhen(
      loaded: () => true,
      orElse: () => false,
    );
    if (!hasLoaded) {
      return;
    }

    final result = await _dashboardRepository.getScores();
    result.when(
      success: (snapshot) {
        final matches = _relevantMatches(snapshot);
        state = state.copyWith(
          sections: [
            for (final section in state.sections)
              if (section is DashboardMatchUpdatesSection)
                DashboardSection.matchUpdates(matches: matches)
              else
                section,
          ],
        );
      },
      // Keep showing the last known scores when a poll fails.
      error: (_) {},
    );
  }

  List<DashboardSection> _buildSections({
    required List<ChannelModel> channels,
    required List<MatchModel> matches,
  }) =>
      [
        const DashboardSection.header(),
        const DashboardSection.launcher(),
        if (channels.isNotEmpty)
          DashboardSection.channels(channels: channels),
        DashboardSection.matchUpdates(matches: matches),
        DashboardSection.news(items: _dummyNews),
      ];

  /// Live matches first, then the rest in kickoff order, capped for the feed.
  List<MatchModel> _relevantMatches(ScoresSnapshot snapshot) {
    const feedLimit = 3;
    final sorted = [...snapshot.matches]..sort((a, b) {
        if (a.isLive != b.isLive) {
          return a.isLive ? -1 : 1;
        }
        final aDate = a.utcDate;
        final bDate = b.utcDate;
        if (aDate == null || bDate == null) {
          return 0;
        }
        return aDate.compareTo(bDate);
      });
    return sorted.take(feedLimit).toList();
  }

  /// Placeholder items until the news API is available.
  static final _dummyNews = [
    NewsItem(
      id: '1',
      title: 'Al Hilal advance to the King\'s Cup final after a strong '
          'performance',
      publishedAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),
    NewsItem(
      id: '2',
      title: 'Cristiano Ronaldo reaches 35 goals this season',
      publishedAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    NewsItem(
      id: '3',
      title: 'Al Nassr closing in on new defender signing',
      publishedAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
  ];
}
