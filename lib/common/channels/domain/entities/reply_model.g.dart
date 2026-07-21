// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReplyModel _$ReplyModelFromJson(Map<String, dynamic> json) => _ReplyModel(
  id: json['id'] as String,
  text: json['text'] as String,
  threadId: json['threadId'] as String,
  authorId: json['authorId'] as String,
  author: json['author'] == null
      ? null
      : ThreadAuthor.fromJson(json['author'] as Map<String, dynamic>),
  likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
  isLiked: json['isLiked'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ReplyModelToJson(_ReplyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'threadId': instance.threadId,
      'authorId': instance.authorId,
      'author': instance.author,
      'likeCount': instance.likeCount,
      'isLiked': instance.isLiked,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_RepliesPage _$RepliesPageFromJson(Map<String, dynamic> json) => _RepliesPage(
  replies:
      (json['replies'] as List<dynamic>?)
          ?.map((e) => ReplyModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RepliesPageToJson(_RepliesPage instance) =>
    <String, dynamic>{'replies': instance.replies};
