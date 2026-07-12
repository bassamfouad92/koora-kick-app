import 'package:koora_kick/common/channels/data/repositories/channel_repository.dart';
import 'package:koora_kick/common/channels/data/requests/get_channels_request.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/features/onboarding/presentation/states/interests_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'interests_view_model.g.dart';

@riverpod
class InterestsViewModel extends _$InterestsViewModel {
  @override
  InterestsState build() {
    Future.microtask(fetchClubs);
    return const InterestsState();
  }

  late final _channelRepository = ref.read(channelRepositoryProvider);
  late final AppSettingsStore _appSettingsStore =
      ref.read(appSettingsStoreProvider);

  Future<void> fetchClubs() async {
    state = state.copyWith(status: const InterestsStatus.loading());

    final result =
        await _channelRepository.getChannels(type: ChannelType.club);
    result.when(
      success: (clubs) {
        state = state.copyWith(
          status: const InterestsStatus.loaded(),
          clubs: clubs,
          // Pre-select channels the user already joined.
          selectedClubIds: {
            for (final club in clubs)
              if (club.isJoined) club.id,
          },
        );
      },
      error: (exception) {
        state = state.copyWith(
          status: InterestsStatus.error(AppError.api(message: exception.message)),
        );
      },
    );
  }

  void toggleClub(String clubId) {
    final selected = {...state.selectedClubIds};
    selected.contains(clubId) ? selected.remove(clubId) : selected.add(clubId);
    state = state.copyWith(selectedClubIds: selected);
  }

  void toggleTopic(String topicKey) {
    final selected = {...state.selectedTopics};
    selected.contains(topicKey)
        ? selected.remove(topicKey)
        : selected.add(topicKey);
    state = state.copyWith(selectedTopics: selected);
  }

  /// Joins the selected club channels in one batch call and persists the
  /// selected topics. join-batch is idempotent — already-joined and invalid
  /// ids are skipped, so re-running onboarding never blocks the user.
  Future<void> submit() async {
    state = state.copyWith(status: const InterestsStatus.submitting());

    final joinedIds = {
      for (final club in state.clubs)
        if (club.isJoined) club.id,
    };
    final toJoin = state.selectedClubIds.difference(joinedIds);

    await _channelRepository.joinChannelsBatch(toJoin.toList());

    final settings = await _appSettingsStore.fetch() ?? const AppSettingsData();
    await _appSettingsStore.save(
      settings.copyWith(favoriteTopics: state.selectedTopics.toList()),
    );

    state = state.copyWith(status: const InterestsStatus.submitted());
  }
}
