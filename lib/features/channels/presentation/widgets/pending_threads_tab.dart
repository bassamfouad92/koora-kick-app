import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/channels/presentation/widgets/thread_card.dart';
import 'package:flutter/material.dart';

/// The author's own pending/rejected threads — only shown while at least
/// one exists.
class PendingThreadsTab extends StatelessWidget {
  const PendingThreadsTab({
    required this.threads,
    required this.onThreadTap,
    super.key,
  });

  final List<ThreadModel> threads;
  final ValueChanged<ThreadModel> onThreadTap;

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.all(context.dimensions.medium),
        children: [
          for (final thread in threads) ...[
            ThreadCard(thread: thread, onTap: () => onThreadTap(thread)),
            SizedBox(height: context.dimensions.smallH),
          ],
        ],
      );
}
