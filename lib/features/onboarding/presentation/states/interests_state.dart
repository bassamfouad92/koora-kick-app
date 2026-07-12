import 'package:koora_kick/common/channels/domain/entities/channel_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interests_state.freezed.dart';

@freezed
sealed class InterestsStatus with _$InterestsStatus {
  const factory InterestsStatus.loading() = _Loading;
  const factory InterestsStatus.loaded() = _Loaded;
  const factory InterestsStatus.error(AppError error) = _Error;
  const factory InterestsStatus.submitting() = _Submitting;
  const factory InterestsStatus.submitted() = _Submitted;
}

@freezed
sealed class InterestsState with _$InterestsState {
  const InterestsState._();

  const factory InterestsState({
    @Default(InterestsStatus.loading()) InterestsStatus status,
    @Default([]) List<ChannelModel> clubs,
    @Default({}) Set<String> selectedClubIds,
    @Default({}) Set<String> selectedTopics,
  }) = _InterestsState;

  bool get hasSelection =>
      selectedClubIds.isNotEmpty || selectedTopics.isNotEmpty;
}
