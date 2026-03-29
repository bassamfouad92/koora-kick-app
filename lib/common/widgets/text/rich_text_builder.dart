import 'package:koora_kick/common/theme/app_theme_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppRichTextBuilder {

  AppRichTextBuilder(this.context);
  final BuildContext context;
  final List<InlineSpan> _spans = [];

  AppRichTextBuilder add(String text, {TextStyle? style}) {
    _spans.add(TextSpan(text: text, style: style));
    return this;
  }

  AppRichTextBuilder link(
      String text, {
        TextStyle? style,
        VoidCallback? onTap,
      }) {
    _spans.add(
      TextSpan(
        text: text,
        style: style ?? context.typo.bodySmall.copyWith(
          fontWeight: FontWeight.bold,
          color: context.colors.textPrimary
        ),
        recognizer: onTap != null
            ? (TapGestureRecognizer()..onTap = onTap)
            : null,
      ),
    );
    return this;
  }

  AppRichTextBuilder space({double? value}) {
    final width = value ?? context.dimensions.xSmallW;
    _spans.add(WidgetSpan(child: SizedBox(width: width)));
    return this;
  }

  AppRichTextBuilder button(String text, {required VoidCallback onTap}) {
    _spans.add(
      WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.dimensions.radiusLarge),
              color: context.colors.border,
            ),
            child: Text(
              text,
              style: context.typo.bodySmall.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
    return this;
  }

  AppRichText build({
    TextAlign textAlign = TextAlign.start,
    TextStyle? baseStyle,
  }) =>
      AppRichText(
        spans: _spans,
        baseStyle: baseStyle,
        textAlign: textAlign,
      );
}

class AppRichText extends StatelessWidget {
  const AppRichText({
    super.key,
    required this.spans,
    this.baseStyle,
    this.textAlign,
  });

  final TextAlign? textAlign;
  final List<InlineSpan> spans;
  final TextStyle? baseStyle;

  @override
  Widget build(BuildContext context) => RichText(
    textAlign: textAlign ?? TextAlign.start,
    text: TextSpan(
      style: baseStyle ?? context.typo.bodySmall.copyWith(
        color: context.colors.textSecondary,
      ),
      children: spans,
    ),
  );
}