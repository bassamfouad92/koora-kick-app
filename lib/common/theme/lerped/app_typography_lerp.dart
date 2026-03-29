import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_typography.dart';

class AppTypographyLerp implements AppTypography {
  const AppTypographyLerp({
    required this.headingExtraLarge,
    required this.headingLarge,
    required this.headingMedium,
    required this.headingSmall,
    required this.headingExtraSmall,
    required this.bodyExtraSmall,
    required this.bodySmall,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.navigationTitle,
    required this.caption,
    required this.captionLink,
    required this.buttonPrimary,
    required this.buttonMedium,
    required this.inlineLink,
    required this.label,
    required this.input,
    required this.warningMessage,
    required this.errorMessage,
  });

  @override final TextStyle headingExtraLarge;
  @override final TextStyle headingLarge;
  @override final TextStyle headingMedium;
  @override final TextStyle headingSmall;
  @override final TextStyle headingExtraSmall;
  @override final TextStyle bodyExtraSmall;
  @override final TextStyle bodySmall;
  @override final TextStyle bodyMedium;
  @override final TextStyle bodyLarge;
  @override final TextStyle navigationTitle;
  @override final TextStyle caption;
  @override final TextStyle captionLink;
  @override final TextStyle buttonPrimary;
  @override final TextStyle buttonMedium;
  @override final TextStyle inlineLink;
  @override final TextStyle label;
  @override final TextStyle input;
  @override final TextStyle warningMessage;
  @override final TextStyle errorMessage;


  static AppTypography lerp(
      AppTypography a,
      AppTypography b,
      double t,
      ) => AppTypographyLerp(
      headingExtraLarge:
      TextStyle.lerp(a.headingExtraLarge, b.headingExtraLarge, t)!,
      headingLarge:
      TextStyle.lerp(a.headingLarge, b.headingLarge, t)!,
      headingMedium:
      TextStyle.lerp(a.headingMedium, b.headingMedium, t)!,
      headingSmall:
      TextStyle.lerp(a.headingSmall, b.headingSmall, t)!,
      headingExtraSmall:
      TextStyle.lerp(a.headingExtraSmall, b.headingExtraSmall, t)!,

      bodyExtraSmall:
      TextStyle.lerp(a.bodyExtraSmall, b.bodyExtraSmall, t)!,
      bodySmall:
      TextStyle.lerp(a.bodySmall, b.bodySmall, t)!,
      bodyMedium:
      TextStyle.lerp(a.bodyMedium, b.bodyMedium, t)!,
      bodyLarge:
      TextStyle.lerp(a.bodyLarge, b.bodyLarge, t)!,

      navigationTitle:
      TextStyle.lerp(a.navigationTitle, b.navigationTitle, t)!,
      caption:
      TextStyle.lerp(a.caption, b.caption, t)!,
      captionLink:
      TextStyle.lerp(a.captionLink, b.captionLink, t)!,

      buttonPrimary:
      TextStyle.lerp(a.buttonPrimary, b.buttonPrimary, t)!,
      buttonMedium:
      TextStyle.lerp(a.buttonMedium, b.buttonMedium, t)!,

      inlineLink:
      TextStyle.lerp(a.inlineLink, b.inlineLink, t)!,
      label:
      TextStyle.lerp(a.label, b.label, t)!,
      input:
      TextStyle.lerp(a.input, b.input, t)!,

      warningMessage:
      TextStyle.lerp(a.warningMessage, b.warningMessage, t)!,
      errorMessage:
      TextStyle.lerp(a.errorMessage, b.errorMessage, t)!,
    );
}
