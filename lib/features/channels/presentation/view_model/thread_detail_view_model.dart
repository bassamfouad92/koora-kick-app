import 'package:koora_kick/common/channels/data/repositories/thread_repository_impl.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/channels/data/thread_local_prefs_store.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/features/channels/presentation/state/thread_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'thread_detail_view_model.g.dart';

@riverpod
class ThreadDetailViewModel extends _$ThreadDetailViewModel {
  @override
  ThreadDetailState build(String threadId) {
    Future.microtask(load);
    return ThreadDetailState(
      isSaved: _localPrefs.isSaved(threadId),
      isMuted: _localPrefs.isMuted(threadId),
    );
  }

  late final _threadRepository = ref.read(threadRepositoryProvider);
  late final _localPrefs = ref.read(threadLocalPrefsStoreProvider);

  Future<void> load() async {
    state = state.copyWith(status: const ThreadDetailStatus.loading());

    final result = await _threadRepository.getThread(threadId);
    result.when(
      success: (thread) => state = state.copyWith(
        status: const ThreadDetailStatus.loaded(),
        thread: thread,
      ),
      error: (exception) => state = state.copyWith(
        status: ThreadDetailStatus.error(AppError.api(message: exception.message)),
      ),
    );

    await loadReplies();
  }

  Future<void> loadReplies() async {
    state = state.copyWith(isRepliesLoading: true);
    final result = await _threadRepository.getReplies(threadId);
    result.when(
      success: (page) => state = state.copyWith(
        replies: page.replies,
        isRepliesLoading: false,
      ),
      error: (_) => state = state.copyWith(isRepliesLoading: false),
    );
  }

  Future<void> submitReply(String text) async {
    if (text.trim().isEmpty || state.isSubmittingReply) {
      return;
    }
    state = state.copyWith(isSubmittingReply: true);

    final result = await _threadRepository.createReply(threadId, text.trim());
    result.when(
      success: (reply) {
        final thread = state.thread;
        state = state.copyWith(
          replies: [...state.replies, reply],
          isSubmittingReply: false,
          thread: thread?.copyWith(replyCount: thread.replyCount + 1),
        );
      },
      error: (_) => state = state.copyWith(isSubmittingReply: false),
    );
  }

  Future<void> toggleLike() async {
    final thread = state.thread;
    if (thread == null) return;

    final optimisticLiked = !thread.isLiked;
    state = state.copyWith(
      thread: thread.copyWith(
        isLiked: optimisticLiked,
        likeCount: thread.likeCount + (optimisticLiked ? 1 : -1),
      ),
    );

    final result = await _threadRepository.likeThread(threadId, like: optimisticLiked);
    result.when(
      success: (like) => state = state.copyWith(
        thread: state.thread?.copyWith(
          isLiked: like.isLiked,
          likeCount: like.likeCount,
        ),
      ),
      // Revert the optimistic update on failure.
      error: (_) => state = state.copyWith(thread: thread),
    );
  }

  Future<void> toggleSave() async {
    final next = !state.isSaved;
    state = state.copyWith(isSaved: next);
    await _localPrefs.setSaved(threadId, next);
  }

  Future<void> toggleMute() async {
    final next = !state.isMuted;
    state = state.copyWith(isMuted: next);
    await _localPrefs.setMuted(threadId, next);
  }
}
