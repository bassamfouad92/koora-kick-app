import 'package:koora_kick/common/channels/domain/entities/thread_model.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:flutter/material.dart';

/// Thread row rendered in the Threads/Pending tabs — title, description,
/// hashtags and the like/reply counters.
class ThreadCard extends StatelessWidget {
  const ThreadCard({
    required this.thread,
    required this.onTap,
    super.key,
  });

  final ThreadModel thread;
  final VoidCallback onTap;

  String _timeAgo(DateTime createdAt) {
    final elapsed = DateTime.now().difference(createdAt);
    if (elapsed.inDays > 0) return '${elapsed.inDays}d ago';
    if (elapsed.inHours > 0) return '${elapsed.inHours}h ago';
    if (elapsed.inMinutes > 0) return '${elapsed.inMinutes}m ago';
    return 'now';
  }

  @override
  Widget build(BuildContext context) {
    final createdAt = thread.createdAt;

    return Material(
      color: context.colors.surface,
      borderRadius: BorderRadius.circular(context.dimensions.radiusLarge),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(context.dimensions.radiusLarge),
        child: Padding(
          padding: EdgeInsets.all(context.dimensions.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      thread.title,
                      style: context.typo.bodyMedium.semiBold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (thread.status.isPending) ...[
                    SizedBox(width: context.dimensions.xSmallW),
                    Icon(
                      Icons.hourglass_top_rounded,
                      size: 16,
                      color: context.colors.warning,
                    ),
                  ],
                ],
              ),
              if (thread.description != null && thread.description!.isNotEmpty) ...[
                SizedBox(height: context.dimensions.xSmallH),
                Text(
                  thread.description!,
                  style: context.typo.bodySmall
                      .copyWith(color: context.colors.textSecondary),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (thread.hashtags.isNotEmpty) ...[
                SizedBox(height: context.dimensions.smallH),
                Wrap(
                  spacing: context.dimensions.xSmallW,
                  runSpacing: context.dimensions.xSmallH,
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
              SizedBox(height: context.dimensions.smallH),
              Row(
                children: [
                  Icon(
                    thread.isLiked ? Icons.favorite : Icons.favorite_border,
                    size: 16,
                    color: thread.isLiked ? context.colors.error : context.colors.textSecondary,
                  ),
                  SizedBox(width: context.dimensions.xSmallW),
                  Text('${thread.likeCount}', style: context.typo.bodySmall),
                  SizedBox(width: context.dimensions.mediumW),
                  Icon(
                    Icons.mode_comment_outlined,
                    size: 16,
                    color: context.colors.textSecondary,
                  ),
                  SizedBox(width: context.dimensions.xSmallW),
                  Text('${thread.replyCount}', style: context.typo.bodySmall),
                  const Spacer(),
                  if (thread.status.isPending)
                    Text(
                      ChannelsStrings.pendingApproval.localized(),
                      style: context.typo.bodyExtraSmall
                          .copyWith(color: context.colors.warning),
                    )
                  else if (createdAt != null)
                    Text(
                      _timeAgo(createdAt),
                      style: context.typo.bodyExtraSmall
                          .copyWith(color: context.colors.textSecondary),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
