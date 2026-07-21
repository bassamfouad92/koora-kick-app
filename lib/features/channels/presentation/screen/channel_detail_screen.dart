import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/navigation_extension.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:koora_kick/features/channels/presentation/state/channel_detail_state.dart';
import 'package:koora_kick/features/channels/presentation/view_model/channel_detail_view_model.dart';
import 'package:koora_kick/features/channels/presentation/widgets/channel_header_delegate.dart';
import 'package:koora_kick/features/channels/presentation/widgets/channel_tab_bar_delegate.dart';
import 'package:koora_kick/features/channels/presentation/widgets/matches_tab.dart';
import 'package:koora_kick/features/channels/presentation/widgets/pending_threads_tab.dart';
import 'package:koora_kick/features/channels/presentation/widgets/threads_tab.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChannelDetailScreen extends ConsumerStatefulWidget {
  const ChannelDetailScreen({required this.channelId, super.key});

  final String channelId;

  @override
  ConsumerState<ChannelDetailScreen> createState() => _ChannelDetailScreenState();
}

class _ChannelDetailScreenState extends ConsumerState<ChannelDetailScreen>
    with TickerProviderStateMixin {
  late final ScrollController _scrollController;
  late TabController _tabController;
  bool _tabsIncludePending = false;

  static const double _expandedExtent = kToolbarHeight + 96;
  static const double _collapsedExtent = kToolbarHeight + 40;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_handleScroll);
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (!_scrollController.hasClients) return;
    final threshold = (_expandedExtent - _collapsedExtent) * 0.9;
    final collapsed = _scrollController.offset > threshold;
    ref.read(channelDetailViewModelProvider(widget.channelId).notifier).updateHeaderState(
          collapsed
              ? const ChannelHeaderState.collapsed()
              : const ChannelHeaderState.expanded(),
        );
  }

  void _syncTabController(bool includePending) {
    if (_tabsIncludePending == includePending) return;
    final previousIndex = _tabController.index;
    _tabController.dispose();
    _tabsIncludePending = includePending;
    _tabController = TabController(
      length: includePending ? 3 : 2,
      vsync: this,
      initialIndex: previousIndex.clamp(0, includePending ? 2 : 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(channelDetailViewModelProvider(widget.channelId).notifier);

    ref.listen(
      channelDetailViewModelProvider(widget.channelId).select((s) => s.hasPendingThread),
      (previous, next) => setState(() => _syncTabController(next)),
    );

    final state = ref.watch(channelDetailViewModelProvider(widget.channelId));
    _tabsIncludePending = state.hasPendingThread;

    return Scaffold(
      body: SafeArea(
        child: state.status.when(
          loading: () => Center(
            child: CircularProgressIndicator(color: context.colors.primary),
          ),
          error: (error) => Center(
            child: Padding(
              padding: EdgeInsets.all(context.dimensions.large),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(error.generalMessage, style: context.typo.bodyMedium),
                  SizedBox(height: context.dimensions.medium),
                  IconButton(
                    onPressed: notifier.load,
                    icon: Icon(Icons.refresh, color: context.colors.primary),
                  ),
                ],
              ),
            ),
          ),
          loaded: () => _buildLoaded(context, state, notifier),
        ),
      ),
      floatingActionButton: state.channel == null
          ? null
          : AppButton.floating(
              onPressed: () => CreateThreadRoute(channelId: widget.channelId).push(context),
              icon: const Icon(Icons.add),
              backgroundColor: context.colors.primary,
              iconColor: context.colors.buttonPrimaryText,
            ),
    );
  }

  Widget _buildLoaded(
    BuildContext context,
    ChannelDetailState state,
    ChannelDetailViewModel notifier,
  ) {
    final channel = state.channel;
    if (channel == null) return const SizedBox.shrink();

    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverPersistentHeader(
          pinned: true,
          delegate: ChannelHeaderDelegate(
            channel: channel,
            isJoinBusy: state.isJoinBusy,
            onToggleJoin: notifier.toggleJoin,
            notificationsOn: state.notificationsOn,
            onToggleNotifications: notifier.toggleNotifications,
            onBack: () => context.safePop(),
            expandedExtent: _expandedExtent,
            collapsedExtent: _collapsedExtent,
          ),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: ChannelTabBarDelegate(
            TabBar(
              controller: _tabController,
              labelColor: context.colors.primary,
              unselectedLabelColor: context.colors.textSecondary,
              indicatorColor: context.colors.primary,
              tabs: [
                Tab(text: ChannelsStrings.tabThreads.localized()),
                Tab(text: ChannelsStrings.tabMatches.localized()),
                if (state.hasPendingThread)
                  Tab(text: ChannelsStrings.tabPending.localized()),
              ],
            ),
          ),
        ),
      ],
      body: TabBarView(
        controller: _tabController,
        children: [
          ThreadsTab(
            threads: state.visibleThreads,
            isLoading: state.isThreadsLoading,
            filter: state.threadFilter,
            onFilterChanged: notifier.setThreadFilter,
            onThreadTap: (thread) => _openThread(context, thread),
          ),
          const MatchesTab(),
          if (state.hasPendingThread)
            PendingThreadsTab(
              threads: state.pendingThreads,
              onThreadTap: (thread) => _openThread(context, thread),
            ),
        ],
      ),
    );
  }

  void _openThread(BuildContext context, ThreadModel thread) =>
      ThreadDetailRoute(threadId: thread.id).push(context);
}
