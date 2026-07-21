import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_thread_state.freezed.dart';

@freezed
sealed class CreateThreadStatus with _$CreateThreadStatus {
  const factory CreateThreadStatus.initial() = _Initial;
  const factory CreateThreadStatus.submitting() = _Submitting;
  const factory CreateThreadStatus.submitted(ThreadModel thread) = _Submitted;
  const factory CreateThreadStatus.error(AppError error) = _Error;
}

@freezed
sealed class CreateThreadFormErrors with _$CreateThreadFormErrors {
  const factory CreateThreadFormErrors({
    String? title,
    String? description,
    String? tags,
  }) = _CreateThreadFormErrors;
}

@freezed
sealed class CreateThreadState with _$CreateThreadState {
  const factory CreateThreadState({
    @Default(CreateThreadStatus.initial()) CreateThreadStatus status,
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<String> tags,
    @Default([]) List<HashtagModel> popularTags,
    @Default(false) bool isTagsLoading,
    @Default(CreateThreadFormErrors()) CreateThreadFormErrors formErrors,
  }) = _CreateThreadState;
}
