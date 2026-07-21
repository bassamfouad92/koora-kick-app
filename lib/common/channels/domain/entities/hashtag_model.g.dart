// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashtag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HashtagModel _$HashtagModelFromJson(Map<String, dynamic> json) =>
    _HashtagModel(
      id: json['id'] as String,
      tag: json['tag'] as String,
      threadCount: (json['threadCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$HashtagModelToJson(_HashtagModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
      'threadCount': instance.threadCount,
    };

_LikeResult _$LikeResultFromJson(Map<String, dynamic> json) => _LikeResult(
  likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
  isLiked: json['isLiked'] as bool? ?? false,
);

Map<String, dynamic> _$LikeResultToJson(_LikeResult instance) =>
    <String, dynamic>{
      'likeCount': instance.likeCount,
      'isLiked': instance.isLiked,
    };
