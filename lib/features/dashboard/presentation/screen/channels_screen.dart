import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/common/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:koora_kick/features/channels/presentation/state/channels_list_state.dart';
import 'package:koora_kick/features/channels/presentation/view_model/channels_list_view_model.dart';
import 'package:koora_kick/features/channels/presentation/widgets/channel_grid_card.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChannelsScreen extends ConsumerStatefulWidget {
  const ChannelsScreen({super.key});

  @override
  ConsumerState<ChannelsScreen> createState() => _ChannelsScreenState();
}

class _ChannelsScreenState extends ConsumerState<ChannelsScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(channelsListViewModelProvider);
    final notifier = ref.read(channelsListViewModelProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.dimensions.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.dimensions.smallH),
              _searchRow(context, notifier),
              SizedBox(height: context.dimensions.mediumH),
              _categoryTabs(context, state, notifier),
              SizedBox(height: context.dimensions.mediumH),
              _countSortRow(context, state, notifier),
              SizedBox(height: context.dimensions.smallH),
              Expanded(child: _body(context, state, notifier)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchRow(BuildContext context, ChannelsListViewModel notifier) => Row(
        children: [
          Expanded(
            child: AppInputField.search(
              controller: _searchController,
              hintText: ChannelsStrings.searchHint.localized(),
            ).withOnChanged(notifier.search).withOnClear(() => notifier.search('')),
          ),
          SizedBox(width: context.dimensions.smallW),
          _FilterButton(onTap: () => _openSortSheet(context)),
        ],
      );

  Widget _categoryTabs(
    BuildContext context,
    ChannelsListState state,
    ChannelsListViewModel notifier,
  ) =>
      SizedBox(
        height: context.dimensions.h(40),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: ChannelCategory.values.length,
          separatorBuilder: (_, __) => SizedBox(width: context.dimensions.smallW),
          itemBuilder: (context, index) {
            final category = ChannelCategory.values[index];
            return _CategoryChip(
              label: _categoryLabel(category),
              isSelected: state.category == category,
              onTap: () => notifier.setCategory(category),
            );
          },
        ),
      );

  Widget _countSortRow(
    BuildContext context,
    ChannelsListState state,
    ChannelsListViewModel notifier,
  ) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ChannelsStrings.count
                .localizedArgs(['${state.visibleChannels.length}']),
            style: context.typo.bodyMedium
                .copyWith(color: context.colors.textSecondary),
          ),
          InkWell(
            onTap: () => _openSortSheet(context),
            child: Row(
              children: [
                Text(
                  _sortLabel(state.sort),
                  style: context.typo.bodyMedium.semiBold,
                ),
                Icon(Icons.keyboard_arrow_down, color: context.colors.textPrimary),
              ],
            ),
          ),
        ],
      );

  Widget _body(
    BuildContext context,
    ChannelsListState state,
    ChannelsListViewModel notifier,
  ) =>
      state.status.when(
        loading: () => Center(
          child: CircularProgressIndicator(color: context.colors.primary),
        ),
        error: (error) => _ErrorView(
          message: error.generalMessage,
          onRetry: notifier.loadChannels,
        ),
        loaded: () {
          final channels = state.visibleChannels;
          return CustomScrollView(
            slivers: [
              if (channels.isEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top: context.dimensions.h(80)),
                    child: Text(
                      ChannelsStrings.empty.localized(),
                      textAlign: TextAlign.center,
                      style: context.typo.bodyMedium
                          .copyWith(color: context.colors.textSecondary),
                    ),
                  ),
                )
              else
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: context.dimensions.mediumH,
                    crossAxisSpacing: context.dimensions.mediumW,
                    childAspectRatio: 0.82,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final channel = channels[index];
                      return ChannelGridCard(
                        channel: channel,
                        isJoinBusy: state.joinBusyIds.contains(channel.id),
                        onToggleJoin: () => notifier.toggleJoin(channel),
                        onTap: () =>
                            ChannelDetailRoute(channelId: channel.id).push(context),
                      );
                    },
                    childCount: channels.length,
                  ),
                ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: context.dimensions.mediumH),
                  child: const _CreateChannelBanner(),
                ),
              ),
            ],
          );
        },
      );

  void _openSortSheet(BuildContext context) {
    final notifier = ref.read(channelsListViewModelProvider.notifier);
    final current = ref.read(channelsListViewModelProvider).sort;

    AppBottomSheet.show<void>(
      context: context,
      title: ChannelsStrings.sortTitle.localized(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final sort in ChannelSort.values)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_sortLabel(sort), style: context.typo.bodyMedium),
              trailing: current == sort
                  ? Icon(Icons.check, color: context.colors.primary)
                  : null,
              onTap: () {
                notifier.setSort(sort);
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
    );
  }

  String _categoryLabel(ChannelCategory category) => switch (category) {
        ChannelCategory.all => ChannelsStrings.catAll.localized(),
        ChannelCategory.clubs => ChannelsStrings.catClubs.localized(),
        ChannelCategory.leagues => ChannelsStrings.catLeagues.localized(),
        ChannelCategory.players => ChannelsStrings.catPlayers.localized(),
        ChannelCategory.nationalTeams =>
          ChannelsStrings.catNationalTeams.localized(),
        ChannelCategory.topics => ChannelsStrings.catTopics.localized(),
      };

  String _sortLabel(ChannelSort sort) => switch (sort) {
        ChannelSort.popular => ChannelsStrings.sortPopular.localized(),
        ChannelSort.name => ChannelsStrings.sortName.localized(),
      };
}

class _FilterButton extends StatelessWidget {
  const _FilterButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusMedium);
    return Material(
      color: context.colors.surface,
      borderRadius: radius,
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.dimensions.mediumW,
            vertical: context.dimensions.smallH,
          ),
          decoration: BoxDecoration(
            borderRadius: radius,
            border: Border.all(color: context.colors.border),
          ),
          child: Row(
            children: [
              Icon(Icons.tune, size: context.dimensions.iconSizeSmall,
                  color: context.colors.textPrimary),
              SizedBox(width: context.dimensions.xSmallW),
              Text(
                ChannelsStrings.filter.localized(),
                style: context.typo.bodyMedium.semiBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  const _CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusXLarge);
    return Material(
      color: isSelected ? context.colors.primary : context.colors.surface,
      borderRadius: radius,
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: context.dimensions.mediumW),
          decoration: BoxDecoration(
            borderRadius: radius,
            border: isSelected ? null : Border.all(color: context.colors.border),
          ),
          child: Text(
            label,
            style: context.typo.bodyMedium.semiBold.copyWith(
              color: isSelected
                  ? context.colors.buttonPrimaryText
                  : context.colors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}

class _CreateChannelBanner extends StatelessWidget {
  const _CreateChannelBanner();

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusLarge);
    return Container(
      padding: EdgeInsets.all(context.dimensions.medium),
      decoration: BoxDecoration(
        borderRadius: radius,
        border: Border.all(color: context.colors.primary),
      ),
      child: Row(
        children: [
          Icon(Icons.group_add_outlined, color: context.colors.primary),
          SizedBox(width: context.dimensions.smallW),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ChannelsStrings.cantFindTitle.localized(),
                  style: context.typo.bodyMedium.semiBold,
                ),
                Text(
                  ChannelsStrings.cantFindSubtitle.localized(),
                  style: context.typo.bodySmall
                      .copyWith(color: context.colors.textSecondary),
                ),
              ],
            ),
          ),
          SizedBox(width: context.dimensions.smallW),
          Material(
            color: context.colors.primary,
            borderRadius: BorderRadius.circular(context.dimensions.radiusMedium),
            child: InkWell(
              borderRadius: BorderRadius.circular(context.dimensions.radiusMedium),
              // No create-channel endpoint exists yet — placeholder action.
              onTap: () => SnackBarUtils.showSuccess(
                ChannelsStrings.createChannel.localized(),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dimensions.mediumW,
                  vertical: context.dimensions.smallH,
                ),
                child: Text(
                  ChannelsStrings.createChannel.localized(),
                  style: context.typo.bodySmall.semiBold
                      .copyWith(color: context.colors.buttonPrimaryText),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, style: context.typo.bodyMedium, textAlign: TextAlign.center),
            SizedBox(height: context.dimensions.medium),
            IconButton(
              onPressed: onRetry,
              icon: Icon(Icons.refresh, color: context.colors.primary),
            ),
          ],
        ),
      );
}
