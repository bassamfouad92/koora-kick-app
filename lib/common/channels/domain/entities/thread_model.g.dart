// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThreadAuthor _$ThreadAuthorFromJson(Map<String, dynamic> json) =>
    _ThreadAuthor(
      id: json['id'] as String,
      name: json['name'] as String,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$ThreadAuthorToJson(_ThreadAuthor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
    };

_ThreadChannelRef _$ThreadChannelRefFromJson(Map<String, dynamic> json) =>
    _ThreadChannelRef(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$ThreadChannelRefToJson(_ThreadChannelRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_ThreadModel _$ThreadModelFromJson(Map<String, dynamic> json) => _ThreadModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  status:
      $enumDecodeNullable(_$ThreadStatusEnumMap, json['status']) ??
      ThreadStatus.pending,
  channelId: json['channelId'] as String,
  authorId: json['authorId'] as String,
  author: json['author'] == null
      ? null
      : ThreadAuthor.fromJson(json['author'] as Map<String, dynamic>),
  channel: json['channel'] == null
      ? null
      : ThreadChannelRef.fromJson(json['channel'] as Map<String, dynamic>),
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  replyCount: (json['replyCount'] as num?)?.toInt() ?? 0,
  likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
  isLiked: json['isLiked'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ThreadModelToJson(_ThreadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': _$ThreadStatusEnumMap[instance.status]!,
      'channelId': instance.channelId,
      'authorId': instance.authorId,
      'author': instance.author,
      'channel': instance.channel,
      'hashtags': instance.hashtags,
      'replyCount': instance.replyCount,
      'likeCount': instance.likeCount,
      'isLiked': instance.isLiked,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$ThreadStatusEnumMap = {
  ThreadStatus.pending: 'pending',
  ThreadStatus.approved: 'approved',
  ThreadStatus.rejected: 'rejected',
};

_ThreadsPage _$ThreadsPageFromJson(Map<String, dynamic> json) => _ThreadsPage(
  threads:
      (json['threads'] as List<dynamic>?)
          ?.map((e) => ThreadModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ThreadsPageToJson(_ThreadsPage instance) =>
    <String, dynamic>{'threads': instance.threads};
