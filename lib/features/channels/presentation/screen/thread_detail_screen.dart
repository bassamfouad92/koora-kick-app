import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/navigation_extension.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:koora_kick/features/channels/presentation/state/thread_detail_state.dart';
import 'package:koora_kick/features/channels/presentation/view_model/thread_detail_view_model.dart';
import 'package:koora_kick/features/channels/presentation/widgets/reply_tile.dart';
import 'package:koora_kick/features/channels/presentation/widgets/thread_actions_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThreadDetailScreen extends ConsumerStatefulWidget {
  const ThreadDetailScreen({required this.threadId, super.key});

  final String threadId;

  @override
  ConsumerState<ThreadDetailScreen> createState() => _ThreadDetailScreenState();
}

class _ThreadDetailScreenState extends ConsumerState<ThreadDetailScreen> {
  final _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = threadDetailViewModelProvider(widget.threadId);
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);
    final thread = state.thread;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: context.colors.textPrimary),
          onPressed: () => context.safePop(),
        ),
        title: Text(
          ChannelsStrings.thread.localized(),
          style: context.typo.bodyMedium.semiBold,
        ),
        actions: [
          if (thread != null)
            IconButton(
              icon: Icon(Icons.more_vert, color: context.colors.textPrimary),
              onPressed: () => ThreadActionsSheet.show(
                context,
                threadId: widget.threadId,
                isSaved: state.isSaved,
                isMuted: state.isMuted,
                onToggleSave: notifier.toggleSave,
                onToggleMute: notifier.toggleMute,
              ),
            ),
        ],
      ),
      body: state.status.when(
        loading: () => Center(
          child: CircularProgressIndicator(color: context.colors.primary),
        ),
        error: (error) => Center(
          child: Padding(
            padding: EdgeInsets.all(context.dimensions.large),
            child: Text(error.generalMessage, style: context.typo.bodyMedium),
          ),
        ),
        loaded: () => thread == null
            ? const SizedBox.shrink()
            : Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(context.dimensions.medium),
                      children: [
                        Text(thread.title, style: context.typo.headingMedium),
                        if (thread.description != null && thread.description!.isNotEmpty) ...[
                          SizedBox(height: context.dimensions.smallH),
                          Text(thread.description!, style: context.typo.bodyMedium),
                        ],
                        if (thread.hashtags.isNotEmpty) ...[
                          SizedBox(height: context.dimensions.smallH),
                          Wrap(
                            spacing: context.dimensions.xSmallW,
                            children: [
                              for (final tag in thread.hashtags)
                                Text(
                                  '#$tag',
                                  style: context.typo.bodySmall.semiBold
                                      .copyWith(color: context.colors.primary),
                                ),
                            ],
                          ),
                        ],
                        SizedBox(height: context.dimensions.mediumH),
                        Row(
                          children: [
                            InkWell(
                              onTap: notifier.toggleLike,
                              child: Row(
                                children: [
                                  Icon(
                                    thread.isLiked ? Icons.favorite : Icons.favorite_border,
                                    size: 20,
                                    color: thread.isLiked
                                        ? context.colors.error
                                        : context.colors.textSecondary,
                                  ),
                                  SizedBox(width: context.dimensions.xSmallW),
                                  Text('${thread.likeCount}', style: context.typo.bodyMedium),
                                ],
                              ),
                            ),
                            SizedBox(width: context.dimensions.mediumW),
                            Icon(
                              Icons.mode_comment_outlined,
                              size: 20,
                              color: context.colors.textSecondary,
                            ),
                            SizedBox(width: context.dimensions.xSmallW),
                            Text('${thread.replyCount}', style: context.typo.bodyMedium),
                          ],
                        ),
                        Divider(height: context.dimensions.xLargeH, color: context.colors.border),
                        Text(
                          '${ChannelsStrings.comments.localized()} '
                          '(${state.replies.length})',
                          style: context.typo.headingExtraSmall,
                        ),
                        if (state.isRepliesLoading && state.replies.isEmpty)
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: context.dimensions.large),
                            child: Center(
                              child: CircularProgressIndicator(color: context.colors.primary),
                            ),
                          )
                        else
                          for (final reply in state.replies) ReplyTile(reply: reply),
                      ],
                    ),
                  ),
                  _buildCommentInput(context, notifier),
                ],
              ),
      ),
    );
  }

  Widget _buildCommentInput(BuildContext context, ThreadDetailViewModel notifier) => Padding(
        padding: EdgeInsets.all(context.dimensions.medium).copyWith(
          bottom: context.dimensions.medium + MediaQuery.paddingOf(context).bottom,
        ),
        child: Row(
          children: [
            Expanded(
              child: AppInputField.text(
                controller: _commentController,
                hintText: ChannelsStrings.writeAComment.localized(),
                labelText: '',
              ),
            ),
            SizedBox(width: context.dimensions.smallW),
            AppButton.circular(
              icon: const Icon(Icons.send, size: 18),
              onPressed: () {
                notifier.submitReply(_commentController.text);
                _commentController.clear();
              },
            ),
          ],
        ),
      );
}
