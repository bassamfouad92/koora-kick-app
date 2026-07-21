import 'package:koora_kick/common/channels/domain/entities/reply_model.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'thread_detail_state.freezed.dart';

@freezed
sealed class ThreadDetailStatus with _$ThreadDetailStatus {
  const factory ThreadDetailStatus.loading() = _Loading;
  const factory ThreadDetailStatus.loaded() = _Loaded;
  const factory ThreadDetailStatus.error(AppError error) = _Error;
}

@freezed
sealed class ThreadDetailState with _$ThreadDetailState {
  const factory ThreadDetailState({
    @Default(ThreadDetailStatus.loading()) ThreadDetailStatus status,
    ThreadModel? thread,
    @Default([]) List<ReplyModel> replies,
    @Default(true) bool isRepliesLoading,
    @Default(false) bool isSubmittingReply,
    @Default(false) bool isSaved,
    @Default(false) bool isMuted,
  }) = _ThreadDetailState;
}
