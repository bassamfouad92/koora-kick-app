import 'package:koora_kick/common/channels/data/repositories/thread_repository_impl.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/features/channels/presentation/state/create_thread_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_thread_view_model.g.dart';

const _maxTags = 5;

@riverpod
class CreateThreadViewModel extends _$CreateThreadViewModel {
  @override
  CreateThreadState build(String channelId) {
    Future.microtask(loadPopularTags);
    return const CreateThreadState();
  }

  late final _threadRepository = ref.read(threadRepositoryProvider);

  Future<void> loadPopularTags() async {
    state = state.copyWith(isTagsLoading: true);
    final result = await _threadRepository.getHashtags();
    result.when(
      success: (tags) => state = state.copyWith(popularTags: tags, isTagsLoading: false),
      error: (_) => state = state.copyWith(isTagsLoading: false),
    );
  }

  Future<List<HashtagModel>> searchTags(String query) async {
    final result = await _threadRepository.getHashtags(query: query);
    return result.when(success: (tags) => tags, error: (_) => const []);
  }

  void inputTitle(String value) {
    state = state.copyWith(
      status: const CreateThreadStatus.initial(),
      title: value,
      formErrors: state.formErrors.copyWith(title: null),
    );
  }

  void inputDescription(String value) {
    state = state.copyWith(
      status: const CreateThreadStatus.initial(),
      description: value,
      formErrors: state.formErrors.copyWith(description: null),
    );
  }

  bool get canAddMoreTags => state.tags.length < _maxTags;

  void addTag(String tag) {
    final normalized = tag.trim().replaceFirst(RegExp(r'^#'), '');
    if (normalized.isEmpty || state.tags.contains(normalized) || !canAddMoreTags) {
      return;
    }
    state = state.copyWith(
      tags: [...state.tags, normalized],
      formErrors: state.formErrors.copyWith(tags: null),
    );
  }

  void removeTag(String tag) {
    state = state.copyWith(tags: state.tags.where((t) => t != tag).toList());
  }

  void setTags(List<String> tags) {
    state = state.copyWith(tags: tags.take(_maxTags).toList());
  }

  bool _validate() {
    final titleError = state.title.trim().length < 3
        ? 'Title must be at least 3 characters.'
        : null;
    final descriptionError = state.description.length > 2000
        ? 'Description is too long.'
        : null;
    state = state.copyWith(
      formErrors: CreateThreadFormErrors(title: titleError, description: descriptionError),
    );
    return titleError == null && descriptionError == null;
  }

  Future<void> submit() async {
    if (!_validate()) {
      return;
    }

    state = state.copyWith(status: const CreateThreadStatus.submitting());

    final result = await _threadRepository.createThread(
      channelId: channelId,
      title: state.title.trim(),
      description: state.description.trim().isEmpty ? null : state.description.trim(),
      hashtags: state.tags,
    );

    result.when(
      success: (thread) => state = state.copyWith(status: CreateThreadStatus.submitted(thread)),
      error: _handleException,
    );
  }

  void _handleException(AppException exception) {
    final appError = exception.when(
      connectivity: () => const AppError.network(),
      unauthorized: () => const AppError.api(message: 'Unauthorized'),
      errorWithMessage: (msg) => AppError.api(message: msg),
      error: () => const AppError.api(message: 'Failed to create thread'),
      api: (message, statusCode, errors) => AppError.api(message: message, code: statusCode),
    );
    state = state.copyWith(status: CreateThreadStatus.error(appError));
  }
}
