import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:koora_kick/features/dashboard/domain/entities/news_item.dart';
import 'package:koora_kick/features/dashboard/presentation/widgets/dashboard_section_title.dart';
import 'package:flutter/material.dart';

/// "Top News" list — fed with dummy items until the news API is available.
class DashboardNewsSection extends StatelessWidget {
  const DashboardNewsSection({required this.items, super.key});

  final List<NewsItem> items;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DashboardSectionTitle(
            title: DashboardStrings.topNews.localized(),
          ),
          for (final (index, item) in items.indexed) ...[
            if (index > 0)
              Divider(height: 1, color: context.colors.border),
            _NewsTile(item: item),
          ],
        ],
      );
}

class _NewsTile extends StatelessWidget {
  const _NewsTile({required this.item});

  final NewsItem item;

  String _timeAgo(DateTime publishedAt) {
    final elapsed = DateTime.now().difference(publishedAt);
    if (elapsed.inDays > 0) {
      return '${elapsed.inDays}d ago';
    }
    if (elapsed.inHours > 0) {
      return '${elapsed.inHours}h ago';
    }
    return '${elapsed.inMinutes}m ago';
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = item.imageUrl;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dimensions.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: context.typo.bodyMedium.semiBold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: context.dimensions.xSmallH),
                Text(
                  _timeAgo(item.publishedAt),
                  style: context.typo.bodyExtraSmall
                      .copyWith(color: context.colors.textSecondary),
                ),
              ],
            ),
          ),
          SizedBox(width: context.dimensions.smallW),
          if (imageUrl != null && imageUrl.isNotEmpty)
            AppImage.network(imageUrl)
                .setDimension(width: 72, height: 56)
                .setStyle(const AppImageStyle.rounded())
                .build()
          else
            Container(
              width: 72,
              height: 56,
              decoration: BoxDecoration(
                color: context.colors.surface,
                borderRadius:
                    BorderRadius.circular(context.dimensions.radiusSmall),
              ),
              child: Icon(
                Icons.sports_soccer_rounded,
                color: context.colors.primary.withOpacity(0.6),
              ),
            ),
        ],
      ),
    );
  }
}
