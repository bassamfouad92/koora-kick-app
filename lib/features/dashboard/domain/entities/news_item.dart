import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_item.freezed.dart';

/// Top-news entry on the dashboard. There is no news backend yet, so the
/// feed is filled with dummy items until the API lands.
@freezed
sealed class NewsItem with _$NewsItem {
  const factory NewsItem({
    required String id,
    required String title,
    required DateTime publishedAt,
    String? imageUrl,
  }) = _NewsItem;
}
