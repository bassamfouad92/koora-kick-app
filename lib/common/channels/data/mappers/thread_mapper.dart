import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/channels/domain/entities/reply_model.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';

class ThreadMapper implements DataMapper<ThreadModel> {
  @override
  ThreadModel map(dynamic data) =>
      ThreadModel.fromJson(data as Map<String, dynamic>);
}

class ThreadsPageMapper implements DataMapper<ThreadsPage> {
  @override
  ThreadsPage map(dynamic data) =>
      ThreadsPage.fromJson(data as Map<String, dynamic>);
}

class ReplyMapper implements DataMapper<ReplyModel> {
  @override
  ReplyModel map(dynamic data) =>
      ReplyModel.fromJson(data as Map<String, dynamic>);
}

class RepliesPageMapper implements DataMapper<RepliesPage> {
  @override
  RepliesPage map(dynamic data) =>
      RepliesPage.fromJson(data as Map<String, dynamic>);
}

class HashtagListMapper implements DataMapper<List<HashtagModel>> {
  @override
  List<HashtagModel> map(dynamic data) => (data as List)
      .map((json) => HashtagModel.fromJson(json as Map<String, dynamic>))
      .toList();
}

class LikeResultMapper implements DataMapper<LikeResult> {
  @override
  LikeResult map(dynamic data) =>
      LikeResult.fromJson(data as Map<String, dynamic>);
}
