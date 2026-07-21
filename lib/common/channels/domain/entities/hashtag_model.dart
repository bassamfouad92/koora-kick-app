import 'package:freezed_annotation/freezed_annotation.dart';

part 'hashtag_model.freezed.dart';
part 'hashtag_model.g.dart';

/// `GET /hashtags?q=` autocomplete entry.
@freezed
sealed class HashtagModel with _$HashtagModel {
  const factory HashtagModel({
    required String id,
    required String tag,
    @Default(0) int threadCount,
  }) = _HashtagModel;

  factory HashtagModel.fromJson(Map<String, dynamic> json) =>
      _$HashtagModelFromJson(json);
}

/// `POST /threads/:id/like` (and reply like) result.
@freezed
sealed class LikeResult with _$LikeResult {
  const factory LikeResult({
    @Default(0) int likeCount,
    @Default(false) bool isLiked,
  }) = _LikeResult;

  factory LikeResult.fromJson(Map<String, dynamic> json) =>
      _$LikeResultFromJson(json);
}
