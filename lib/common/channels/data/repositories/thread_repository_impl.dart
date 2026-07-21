import 'package:koora_kick/common/channels/data/requests/create_reply_request.dart';
import 'package:koora_kick/common/channels/data/requests/create_thread_request.dart';
import 'package:koora_kick/common/channels/data/requests/get_hashtags_request.dart';
import 'package:koora_kick/common/channels/data/requests/get_replies_request.dart';
import 'package:koora_kick/common/channels/data/requests/get_thread_request.dart';
import 'package:koora_kick/common/channels/data/requests/get_threads_request.dart';
import 'package:koora_kick/common/channels/data/requests/like_request.dart';
import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/channels/domain/entities/reply_model.dart';
import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/channels/domain/repositories/thread_repository.dart';
import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final threadRepositoryProvider =
    Provider<ThreadRepository>(ThreadRepositoryImpl.new);

class ThreadRepositoryImpl implements ThreadRepository {
  ThreadRepositoryImpl(this._ref);

  final Ref _ref;

  late final _networkClient = _ref.read(networkProvider);

  @override
  Future<Result<ThreadsPage>> getThreads(String channelId) async {
    final response =
        await _networkClient.execute(GetThreadsRequest(channelId: channelId));
    return response.when(
      success: (page) => Result.success(page),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<ThreadModel>> getThread(String threadId) async {
    final response =
        await _networkClient.execute(GetThreadRequest(threadId: threadId));
    return response.when(
      success: (thread) => Result.success(thread),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<ThreadModel>> createThread({
    required String channelId,
    required String title,
    String? description,
    List<String> hashtags = const [],
  }) async {
    final response = await _networkClient.execute(
      CreateThreadRequest(
        channelId: channelId,
        title: title,
        description: description,
        hashtags: hashtags,
      ),
    );
    return response.when(
      success: (thread) => Result.success(thread),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<RepliesPage>> getReplies(String threadId) async {
    final response =
        await _networkClient.execute(GetRepliesRequest(threadId: threadId));
    return response.when(
      success: (page) => Result.success(page),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<ReplyModel>> createReply(String threadId, String text) async {
    final response = await _networkClient
        .execute(CreateReplyRequest(threadId: threadId, text: text));
    return response.when(
      success: (reply) => Result.success(reply),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<LikeResult>> likeThread(
    String threadId, {
    required bool like,
  }) async {
    final response = await _networkClient.execute(
      LikeRequest(targetId: threadId, target: LikeTarget.thread, like: like),
    );
    return response.when(
      success: (result) => Result.success(result),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<LikeResult>> likeReply(
    String replyId, {
    required bool like,
  }) async {
    final response = await _networkClient.execute(
      LikeRequest(targetId: replyId, target: LikeTarget.reply, like: like),
    );
    return response.when(
      success: (result) => Result.success(result),
      error: (exception) => Result.error(exception),
    );
  }

  @override
  Future<Result<List<HashtagModel>>> getHashtags({String? query}) async {
    final response =
        await _networkClient.execute(GetHashtagsRequest(query: query));
    return response.when(
      success: (tags) => Result.success(tags),
      error: (exception) => Result.error(exception),
    );
  }
}
