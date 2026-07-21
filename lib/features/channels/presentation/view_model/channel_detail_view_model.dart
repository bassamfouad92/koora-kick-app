import 'package:koora_kick/common/channels/data/channel_topic_subscription_store.dart';
import 'package:koora_kick/common/channels/data/repositories/channel_repository.dart';
import 'package:koora_kick/common/channels/data/repositories/thread_repository_impl.dart';
import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/features/channels/presentation/state/channel_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'channel_detail_view_model.g.dart';

@riverpod
class ChannelDetailViewModel extends _$ChannelDetailViewModel {
  @override
  ChannelDetailState build(String channelId) {
    Future.microtask(load);
    return ChannelDetailState(
      notificationsOn: _topicStore.isSubscribed(channelId),
    );
  }

  late final _channelRepository = ref.read(channelRepositoryProvider);
  late final _threadRepository = ref.read(threadRepositoryProvider);
  late final _topicStore = ref.read(channelTopicSubscriptionStoreProvider);

  String? get currentUserId {
    final session = ref.read(userSessionServiceProvider).value;
    return session is AuthenticatedStatus ? session.user.id : null;
  }

  Future<void> load() async {
    state = state.copyWith(status: const ChannelDetailStatus.loading());

    final channelResult = await _channelRepository.getChannel(channelId);
    channelResult.when(
      success: (channel) {
        state = state.copyWith(
          status: const ChannelDetailStatus.loaded(),
          channel: channel,
        );
      },
      error: (exception) {
        state = state.copyWith(
          status: ChannelDetailStatus.error(AppError.api(message: exception.message)),
        );
      },
    );

    await loadThreads();
  }

  Future<void> loadThreads() async {
    state = state.copyWith(isThreadsLoading: true);
    final result = await _threadRepository.getThreads(channelId);
    final userId = currentUserId;
    result.when(
      success: (page) => state = state.copyWith(
        threads: page.threads,
        pendingThreads: page.threads
            .where((t) => t.status.isPending && t.authorId == userId)
            .toList(),
        isThreadsLoading: false,
      ),
      error: (_) => state = state.copyWith(isThreadsLoading: false),
    );
  }

  void setThreadFilter(ThreadFilter filter) {
    state = state.copyWith(threadFilter: filter);
  }

  void updateHeaderState(ChannelHeaderState headerState) {
    if (state.headerState == headerState) {
      return;
    }
    state = state.copyWith(headerState: headerState);
  }

  Future<void> toggleJoin() async {
    final channel = state.channel;
    if (channel == null || state.isJoinBusy) {
      return;
    }

    state = state.copyWith(isJoinBusy: true);

    final Result<ChannelModel> result;
    if (channel.isJoined) {
      final leaveResult = await _channelRepository.leaveChannel(channelId);
      result = leaveResult.when(
        success: (_) => Result.success(
          channel.copyWith(
            isJoined: false,
            memberCount: channel.memberCount > 0 ? channel.memberCount - 1 : 0,
          ),
        ),
        error: Result.error,
      );
    } else {
      result = await _channelRepository.joinChannel(channelId);
    }

    result.when(
      success: (updated) => state = state.copyWith(
        channel: updated,
        isJoinBusy: false,
      ),
      error: (_) => state = state.copyWith(isJoinBusy: false),
    );
  }

  Future<void> toggleNotifications() async {
    final next = !state.notificationsOn;
    state = state.copyWith(notificationsOn: next);
    await _topicStore.setSubscribed(channelId, next);
  }
}
