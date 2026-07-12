import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_channels_batch_result.freezed.dart';
part 'join_channels_batch_result.g.dart';

/// Result of `POST /channels/join-batch` — invalid ids and already-joined
/// channels are counted as skipped, never an error.
@freezed
sealed class JoinChannelsBatchResult with _$JoinChannelsBatchResult {
  const factory JoinChannelsBatchResult({
    @Default(0) int joinedCount,
    @Default(0) int skippedCount,
  }) = _JoinChannelsBatchResult;

  factory JoinChannelsBatchResult.fromJson(Map<String, dynamic> json) =>
      _$JoinChannelsBatchResultFromJson(json);
}
