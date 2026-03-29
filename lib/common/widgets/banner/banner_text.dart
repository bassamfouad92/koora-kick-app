import 'dart:ui';

import 'package:koora_kick/common/widgets/text/rich_text_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_text.freezed.dart';

@freezed
sealed class BannerText with _$BannerText {
  const factory BannerText.titleOnly({
    required String title,
    Color? titleColor,
  }) = TitleOnly;

  const factory BannerText.subtextOnly({
    required String subtext,
    Color? subTextTitleColor,
  }) = SubtextOnly;

  const factory BannerText.titleAndSubtext({
    required String title,
    required String subtext,
    Color? titleColor,
    Color? subTextTitleColor,
  }) = TitleAndSubtext;

  const factory BannerText.rich(
    AppRichTextBuilder builder,
  ) = Rich;
}