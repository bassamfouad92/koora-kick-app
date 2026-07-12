// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_channels_batch_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JoinChannelsBatchResult _$JoinChannelsBatchResultFromJson(
  Map<String, dynamic> json,
) => _JoinChannelsBatchResult(
  joinedCount: (json['joinedCount'] as num?)?.toInt() ?? 0,
  skippedCount: (json['skippedCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$JoinChannelsBatchResultToJson(
  _JoinChannelsBatchResult instance,
) => <String, dynamic>{
  'joinedCount': instance.joinedCount,
  'skippedCount': instance.skippedCount,
};
