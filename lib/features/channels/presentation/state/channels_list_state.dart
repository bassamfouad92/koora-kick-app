import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channels_list_state.freezed.dart';

/// Category tabs above the grid. The backend only documents `club | event |
/// federation`, so filtering is done client-side against the channel's
/// `type` string; tabs with no matching data simply show nothing.
enum ChannelCategory {
  all,
  clubs,
  leagues,
  players,
  nationalTeams,
  topics;

  /// The `type` strings this tab accepts. Empty = accept everything.
  Set<String> get acceptedTypes => switch (this) {
        ChannelCategory.all => const {},
        ChannelCategory.clubs => const {'club'},
        ChannelCategory.leagues => const {'league', 'federation'},
        ChannelCategory.players => const {'player'},
        ChannelCategory.nationalTeams => const {'national_team', 'national'},
        ChannelCategory.topics => const {'topic', 'event'},
      };

  bool matches(ChannelModel channel) {
    final types = acceptedTypes;
    if (types.isEmpty) return true;
    final type = channel.type?.toLowerCase() ?? '';
    return types.contains(type);
  }
}

enum ChannelSort {
  popular,
  name;
}

@freezed
sealed class ChannelsListStatus with _$ChannelsListStatus {
  const factory ChannelsListStatus.loading() = _Loading;
  const factory ChannelsListStatus.loaded() = _Loaded;
  const factory ChannelsListStatus.error(AppError error) = _Error;
}

@freezed
sealed class ChannelsListState with _$ChannelsListState {
  const ChannelsListState._();

  const factory ChannelsListState({
    @Default(ChannelsListStatus.loading()) ChannelsListStatus status,
    @Default([]) List<ChannelModel> channels,
    @Default(ChannelCategory.all) ChannelCategory category,
    @Default('') String searchQuery,
    @Default(ChannelSort.popular) ChannelSort sort,
    @Default(<String>{}) Set<String> joinBusyIds,
  }) = _ChannelsListState;

  /// Channels after category + search filtering and sorting.
  List<ChannelModel> get visibleChannels {
    final query = searchQuery.trim().toLowerCase();
    final filtered = channels.where((c) {
      if (!category.matches(c)) return false;
      if (query.isEmpty) return true;
      return c.name.toLowerCase().contains(query);
    }).toList();

    switch (sort) {
      case ChannelSort.popular:
        filtered.sort((a, b) => b.memberCount.compareTo(a.memberCount));
      case ChannelSort.name:
        filtered.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    }
    return filtered;
  }
}
