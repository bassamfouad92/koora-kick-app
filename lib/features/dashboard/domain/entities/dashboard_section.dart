import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/features/dashboard/domain/entities/match_model.dart';
import 'package:koora_kick/features/dashboard/domain/entities/news_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_section.freezed.dart';

/// Building blocks of the home feed, rendered top to bottom in list order.
@freezed
sealed class DashboardSection with _$DashboardSection {
  /// Logo + notifications + headline.
  const factory DashboardSection.header() = DashboardHeaderSection;

  /// Quick-access tiles (KooraMap, Live Screening, Club Channels, News).
  const factory DashboardSection.launcher() = DashboardLauncherSection;

  /// Popular club channels carousel.
  const factory DashboardSection.channels({
    required List<ChannelModel> channels,
  }) = DashboardChannelsSection;

  /// Live scores / today's matches, refreshed every 60s.
  const factory DashboardSection.matchUpdates({
    required List<MatchModel> matches,
  }) = DashboardMatchUpdatesSection;

  /// Top news — dummy content until the news API is available.
  const factory DashboardSection.news({
    required List<NewsItem> items,
  }) = DashboardNewsSection;
}
