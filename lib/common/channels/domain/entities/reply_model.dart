import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_model.freezed.dart';
part 'reply_model.g.dart';

/// A comment on a thread (`/threads/:id/replies`).
@freezed
sealed class ReplyModel with _$ReplyModel {
  const factory ReplyModel({
    required String id,
    required String text,
    required String threadId,
    required String authorId,
    ThreadAuthor? author,
    @Default(0) int likeCount,
    @Default(false) bool isLiked,
    DateTime? createdAt,
  }) = _ReplyModel;

  factory ReplyModel.fromJson(Map<String, dynamic> json) =>
      _$ReplyModelFromJson(json);
}

@freezed
sealed class RepliesPage with _$RepliesPage {
  const factory RepliesPage({
    @Default([]) List<ReplyModel> replies,
  }) = _RepliesPage;

  factory RepliesPage.fromJson(Map<String, dynamic> json) =>
      _$RepliesPageFromJson(json);
}
