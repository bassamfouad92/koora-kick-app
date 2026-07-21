import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_section.dart';
import 'package:koora_kick/features/dashboard/presentation/states/dashboard_state.dart';
import 'package:koora_kick/features/dashboard/presentation/viewmodels/dashboard_view_model.dart';
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_channels_section.dart'
    as widgets;
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_launcher.dart';
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_match_updates_section.dart'
    as widgets;
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_news_section.dart'
    as widgets;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardViewModelProvider);

    return KooraKickPageBuilder.noAppBar()
        .withStickyHeader(const DashboardHeader())
        .content(_buildBody(context, ref, state))
        .alignTo(CrossAxisAlignment.stretch)
        .scrollable();
  }

  Widget _buildBody(BuildContext context, WidgetRef ref, DashboardState state) =>
      state.status.when(
        initial: () => const SizedBox.shrink(),
        loading: () => Padding(
          padding: EdgeInsets.only(top: context.dimensions.h(200)),
          child: Center(
            child: CircularProgressIndicator(color: context.colors.primary),
          ),
        ),
        error: (error) => Padding(
          padding: EdgeInsets.only(top: context.dimensions.h(200)),
          child: Column(
            children: [
              Text(
                error.generalMessage,
                style: context.typo.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: context.dimensions.medium),
              IconButton(
                onPressed:
                    ref.read(dashboardViewModelProvider.notifier).loadDashboard,
                icon: Icon(Icons.refresh, color: context.colors.primary),
              ),
            ],
          ),
        ),
        loaded: () => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // The header is pinned via withStickyHeader above, not scrolled.
            for (final section in state.sections)
              if (section is! DashboardHeaderSection) _buildSection(section),
          ],
        ),
      );

  Widget _buildSection(DashboardSection section) => switch (section) {
        DashboardHeaderSection() => const SizedBox.shrink(),
        DashboardLauncherSection() => const DashboardLauncher(),
        DashboardChannelsSection(:final channels) =>
          widgets.DashboardChannelsSection(channels: channels),
        DashboardMatchUpdatesSection(:final matches) =>
          widgets.DashboardMatchUpdatesSection(matches: matches),
        DashboardNewsSection(:final items) =>
          widgets.DashboardNewsSection(items: items),
      };
}
