import 'package:freezed_annotation/freezed_annotation.dart';

part 'thread_model.freezed.dart';
part 'thread_model.g.dart';

/// `pending` threads are only visible to their own author until an admin
/// reviews them (`approved` | `rejected`). Enum names match the API values.
enum ThreadStatus {
  pending,
  approved,
  rejected;

  bool get isPending => this == ThreadStatus.pending;
}

@freezed
sealed class ThreadAuthor with _$ThreadAuthor {
  const factory ThreadAuthor({
    required String id,
    required String name,
    String? photo,
  }) = _ThreadAuthor;

  factory ThreadAuthor.fromJson(Map<String, dynamic> json) =>
      _$ThreadAuthorFromJson(json);
}

@freezed
sealed class ThreadChannelRef with _$ThreadChannelRef {
  const factory ThreadChannelRef({
    required String id,
    required String name,
    String? slug,
  }) = _ThreadChannelRef;

  factory ThreadChannelRef.fromJson(Map<String, dynamic> json) =>
      _$ThreadChannelRefFromJson(json);
}

@freezed
sealed class ThreadModel with _$ThreadModel {
  const factory ThreadModel({
    required String id,
    required String title,
    String? description,
    @Default(ThreadStatus.pending) ThreadStatus status,
    required String channelId,
    required String authorId,
    ThreadAuthor? author,
    ThreadChannelRef? channel,
    @Default([]) List<String> hashtags,
    @Default(0) int replyCount,
    @Default(0) int likeCount,
    @Default(false) bool isLiked,
    DateTime? createdAt,
  }) = _ThreadModel;

  factory ThreadModel.fromJson(Map<String, dynamic> json) =>
      _$ThreadModelFromJson(json);
}

@freezed
sealed class ThreadsPage with _$ThreadsPage {
  const factory ThreadsPage({
    @Default([]) List<ThreadModel> threads,
  }) = _ThreadsPage;

  factory ThreadsPage.fromJson(Map<String, dynamic> json) =>
      _$ThreadsPageFromJson(json);
}
