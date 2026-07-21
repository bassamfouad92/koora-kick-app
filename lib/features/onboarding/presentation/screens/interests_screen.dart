import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/common/widgets/chips/app_choice_chip.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/onboarding/onboarding_strings.dart';
import 'package:koora_kick/features/onboarding/presentation/states/interests_state.dart';
import 'package:koora_kick/features/onboarding/presentation/view_models/interests_view_model.dart';
import 'package:koora_kick/features/onboarding/presentation/widgets/club_grid_item.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InterestsScreen extends ConsumerWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(interestsViewModelProvider);
    final notifier = ref.read(interestsViewModelProvider.notifier);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            OnboardingStrings.interestsTitle.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .subtitle(
          [
            Text(
              OnboardingStrings.interestsSubtitle.localized(),
              style: context.typo.bodyMedium.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            Text(
              OnboardingStrings.interestsUpdateLater.localized(),
              style: context.typo.bodySmall.copyWith(
                color: context.colors.textTertiary,
              ),
            ),
          ]
              .column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: context.dimensions.xSmallH,
              )
              .withPadding(EdgeInsets.only(top: context.dimensions.smallH)),
        )
        .content(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionHeader(
                context,
                title: OnboardingStrings.favoriteClubsTitle.localized(),
                subtitle:
                    OnboardingStrings.favoriteClubsSubtitle.localized(),
              ),
              _buildClubsSection(context, ref, state).withPadding(
                EdgeInsets.only(top: context.dimensions.mediumH),
              ),
              _sectionHeader(
                context,
                title: OnboardingStrings.topicsTitle.localized(),
                subtitle: OnboardingStrings.topicsSubtitle.localized(),
              ).withPadding(EdgeInsets.only(top: context.dimensions.xLargeH)),
              _buildTopicChips(context, state, notifier).withPadding(
                EdgeInsets.only(top: context.dimensions.mediumH),
              ),
            ],
          ),
        )
        .withBottomContent(
          AppButton.primary(
            OnboardingStrings.continueButton.localized(),
            onPressed: notifier.submit,
          ),
        )
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
        .listen<InterestsState>(interestsViewModelProvider, (
          context,
          ref,
          prev,
          next,
        ) {
          next.status.maybeWhen(
            submitting: () => context.showLoader(),
            submitted: () {
              context.hideLoader();
              const WatchPreferenceRoute().push(context);
            },
            error: (error) {
              context.hideLoader();
              if (error.generalMessage.isNotEmpty) {
                SnackBarUtils.showError(error.generalMessage);
              }
            },
            orElse: () => context.hideLoader(),
          );
        });
  }

  Widget _sectionHeader(
    BuildContext context, {
    required String title,
    required String subtitle,
  }) =>
      [
        Text(title, style: context.typo.headingExtraSmall),
        Text(
          subtitle,
          style: context.typo.bodySmall.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
      ].column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: context.dimensions.xSmallH,
      );

  static const _clubItemAspectRatio = 0.98;

  Widget _buildClubsSection(
    BuildContext context,
    WidgetRef ref,
    InterestsState state,
  ) {
    final notifier = ref.read(interestsViewModelProvider.notifier);

    return state.status.maybeWhen(
      loading: () => Center(
        child: const CircularProgressIndicator.adaptive().withPadding(
          EdgeInsets.symmetric(vertical: context.dimensions.xLargeH),
        ),
      ),
      error: (_) => _clubsError(context, notifier),
      orElse: () => _clubsList(context, state, notifier),
    );
  }

  /// A horizontal, fixed-size list keeps every item's width/height known
  /// upfront, so nothing needs to measure children to lay out — unlike a
  /// shrink-wrapped GridView, which crashes inside this page's
  /// SliverFillRemaining when Flutter probes its intrinsic height.
  Widget _clubsList(
    BuildContext context,
    InterestsState state,
    InterestsViewModel notifier,
  ) =>
      SizedBox(
        height: context.dimensions.h(110) / _clubItemAspectRatio,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: state.clubs.length,
          separatorBuilder: (_, __) =>
              SizedBox(width: context.dimensions.mediumW),
          itemBuilder: (context, index) {
            final club = state.clubs[index];
            return SizedBox(
              width: context.dimensions.w(110),
              child: ClubGridItem(
                club: club,
                isSelected: state.selectedClubIds.contains(club.id),
                onTap: () => notifier.toggleClub(club.id),
              ),
            );
          },
        ),
      );

  Widget _clubsError(BuildContext context, InterestsViewModel notifier) => [
        Text(
          'global_something_went_wrong'.localized(),
          style: context.typo.bodyMedium.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        AppButton.text(
          text: 'global_retry'.localized(),
          onPressed: notifier.fetchClubs,
        ),
      ].column(spacing: context.dimensions.smallH);

  Widget _buildTopicChips(
    BuildContext context,
    InterestsState state,
    InterestsViewModel notifier,
  ) =>
      Wrap(
        spacing: context.dimensions.smallW,
        runSpacing: context.dimensions.smallH,
        children: [
          for (final topicKey in OnboardingStrings.allTopics)
            AppChoiceChip(
              label: topicKey.localized(),
              isSelected: state.selectedTopics.contains(topicKey),
              onTap: () => notifier.toggleTopic(topicKey),
            ),
        ],
      );
}
