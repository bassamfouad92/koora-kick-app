import 'package:koora_kick/common/channels/data/repositories/channel_repository.dart';
import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/channels/presentation/state/channels_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'channels_list_view_model.g.dart';

@riverpod
class ChannelsListViewModel extends _$ChannelsListViewModel {
  late final _channelRepository = ref.read(channelRepositoryProvider);

  @override
  ChannelsListState build() {
    Future.microtask(loadChannels);
    return const ChannelsListState();
  }

  Future<void> loadChannels() async {
    state = state.copyWith(status: const ChannelsListStatus.loading());

    // All channels are fetched once; category/search/sort are applied
    // client-side so the tabs work regardless of backend type vocabulary.
    final result = await _channelRepository.getChannels();
    result.when(
      success: (channels) => state = state.copyWith(
        status: const ChannelsListStatus.loaded(),
        channels: channels,
      ),
      error: (exception) => state = state.copyWith(
        status: ChannelsListStatus.error(AppError.api(message: exception.message)),
      ),
    );
  }

  void setCategory(ChannelCategory category) {
    state = state.copyWith(category: category);
  }

  void search(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setSort(ChannelSort sort) {
    state = state.copyWith(sort: sort);
  }

  Future<void> toggleJoin(ChannelModel channel) async {
    if (state.joinBusyIds.contains(channel.id)) {
      return;
    }
    state = state.copyWith(joinBusyIds: {...state.joinBusyIds, channel.id});

    final result = channel.isJoined
        ? await _channelRepository.leaveChannel(channel.id).then(
              (r) => r.when(
                success: (_) => channel.copyWith(
                  isJoined: false,
                  memberCount: channel.memberCount > 0 ? channel.memberCount - 1 : 0,
                ),
                error: (_) => null,
              ),
            )
        : await _channelRepository.joinChannel(channel.id).then(
              (r) => r.when(success: (updated) => updated, error: (_) => null),
            );

    state = state.copyWith(
      channels: result == null
          ? state.channels
          : [
              for (final c in state.channels) c.id == channel.id ? result : c,
            ],
      joinBusyIds: {...state.joinBusyIds}..remove(channel.id),
    );
  }
}
