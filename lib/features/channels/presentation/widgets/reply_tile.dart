import 'package:koora_kick/common/channels/domain/entities/reply_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

/// A single comment row under a thread.
class ReplyTile extends StatelessWidget {
  const ReplyTile({required this.reply, super.key});

  final ReplyModel reply;

  String _timeAgo(DateTime createdAt) {
    final elapsed = DateTime.now().difference(createdAt);
    if (elapsed.inDays > 0) return '${elapsed.inDays}d ago';
    if (elapsed.inHours > 0) return '${elapsed.inHours}h ago';
    if (elapsed.inMinutes > 0) return '${elapsed.inMinutes}m ago';
    return 'now';
  }

  @override
  Widget build(BuildContext context) {
    final photo = reply.author?.photo;
    final createdAt = reply.createdAt;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dimensions.smallH),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (photo != null && photo.isNotEmpty)
            AppImage.network(photo)
                .setDimension(width: 36, height: 36)
                .setStyle(const AppImageStyle.circular(fit: BoxFit.cover))
                .build()
          else
            CircleAvatar(
              radius: 18,
              backgroundColor: context.colors.surface,
              child: Icon(Icons.person, color: context.colors.textSecondary),
            ),
          SizedBox(width: context.dimensions.smallW),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      reply.author?.name ?? '',
                      style: context.typo.bodySmall.semiBold,
                    ),
                    SizedBox(width: context.dimensions.xSmallW),
                    if (createdAt != null)
                      Text(
                        _timeAgo(createdAt),
                        style: context.typo.bodyExtraSmall
                            .copyWith(color: context.colors.textSecondary),
                      ),
                  ],
                ),
                SizedBox(height: context.dimensions.xSmallH),
                Text(reply.text, style: context.typo.bodyMedium),
                SizedBox(height: context.dimensions.xSmallH),
                Row(
                  children: [
                    Icon(
                      reply.isLiked ? Icons.favorite : Icons.favorite_border,
                      size: 14,
                      color: reply.isLiked ? context.colors.error : context.colors.textSecondary,
                    ),
                    SizedBox(width: context.dimensions.xSmallW),
                    Text(
                      '${reply.likeCount}',
                      style: context.typo.bodyExtraSmall
                          .copyWith(color: context.colors.textSecondary),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
