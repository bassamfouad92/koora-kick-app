import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/channels/domain/entities/reply_model.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/http/response/result.dart';

abstract interface class ThreadRepository {
  Future<Result<ThreadsPage>> getThreads(String channelId);
  Future<Result<ThreadModel>> getThread(String threadId);
  Future<Result<ThreadModel>> createThread({
    required String channelId,
    required String title,
    String? description,
    List<String> hashtags,
  });
  Future<Result<RepliesPage>> getReplies(String threadId);
  Future<Result<ReplyModel>> createReply(String threadId, String text);
  Future<Result<LikeResult>> likeThread(String threadId, {required bool like});
  Future<Result<LikeResult>> likeReply(String replyId, {required bool like});
  Future<Result<List<HashtagModel>>> getHashtags({String? query});
}
