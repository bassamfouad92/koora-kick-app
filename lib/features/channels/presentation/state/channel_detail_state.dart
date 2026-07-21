import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_detail_state.freezed.dart';

/// Whether the pinned header currently shows the full hero (logo, member
/// count, join button) or has collapsed to just the compact title bar.
/// Toggled by [ChannelDetailScreen] as the body scrolls.
@freezed
sealed class ChannelHeaderState with _$ChannelHeaderState {
  const factory ChannelHeaderState.expanded() = ChannelHeaderExpanded;
  const factory ChannelHeaderState.collapsed() = ChannelHeaderCollapsed;
}

enum ThreadFilter { all, popular, recent }

@freezed
sealed class ChannelDetailStatus with _$ChannelDetailStatus {
  const factory ChannelDetailStatus.loading() = _Loading;
  const factory ChannelDetailStatus.loaded() = _Loaded;
  const factory ChannelDetailStatus.error(AppError error) = _Error;
}

@freezed
sealed class ChannelDetailState with _$ChannelDetailState {
  const ChannelDetailState._();

  const factory ChannelDetailState({
    @Default(ChannelDetailStatus.loading()) ChannelDetailStatus status,
    @Default(ChannelHeaderState.expanded()) ChannelHeaderState headerState,
    ChannelModel? channel,
    @Default([]) List<ThreadModel> threads,
    @Default([]) List<ThreadModel> pendingThreads,
    @Default(true) bool isThreadsLoading,
    @Default(ThreadFilter.all) ThreadFilter threadFilter,
    @Default(true) bool notificationsOn,
    @Default(false) bool isJoinBusy,
  }) = _ChannelDetailState;

  bool get hasPendingThread => pendingThreads.isNotEmpty;

  List<ThreadModel> get visibleThreads {
    final approved = threads.where((t) => !t.status.isPending).toList();
    if (threadFilter == ThreadFilter.popular) {
      approved.sort((a, b) => b.likeCount.compareTo(a.likeCount));
    }
    return approved;
  }
}
