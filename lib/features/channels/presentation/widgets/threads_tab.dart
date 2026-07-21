import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:koora_kick/features/channels/presentation/state/channel_detail_state.dart';
import 'package:koora_kick/features/channels/presentation/widgets/thread_card.dart';
import 'package:koora_kick/features/channels/presentation/widgets/thread_filter_bar.dart';
import 'package:flutter/material.dart';

class ThreadsTab extends StatelessWidget {
  const ThreadsTab({
    required this.threads,
    required this.isLoading,
    required this.filter,
    required this.onFilterChanged,
    required this.onThreadTap,
    super.key,
  });

  final List<ThreadModel> threads;
  final bool isLoading;
  final ThreadFilter filter;
  final ValueChanged<ThreadFilter> onFilterChanged;
  final ValueChanged<ThreadModel> onThreadTap;

  @override
  Widget build(BuildContext context) {
    if (isLoading && threads.isEmpty) {
      return Center(
        child: CircularProgressIndicator(color: context.colors.primary),
      );
    }

    return ListView(
      padding: EdgeInsets.all(context.dimensions.medium),
      children: [
        ThreadFilterBar(selected: filter, onChanged: onFilterChanged),
        SizedBox(height: context.dimensions.mediumH),
        if (threads.isEmpty)
          Padding(
            padding: EdgeInsets.only(top: context.dimensions.xLargeH),
            child: Text(
              ChannelsStrings.noThreadsYet.localized(),
              textAlign: TextAlign.center,
              style: context.typo.bodyMedium
                  .copyWith(color: context.colors.textSecondary),
            ),
          )
        else
          for (final thread in threads) ...[
            ThreadCard(thread: thread, onTap: () => onThreadTap(thread)),
            SizedBox(height: context.dimensions.smallH),
          ],
      ],
    );
  }
}
