import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/lerped/app_backgrounds_lerp.dart';

class AppColorsLerp implements AppColors {
  const AppColorsLerp({
    required this.bannerBackgroundError, required this.bannerBackgroundInfo, required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quaternary,
    required this.backgrounds,
    required this.surface,
    required this.onSurface,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textInverse,
    required this.textDisabled,
    required this.textLink,
    required this.buttonDisabled,
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
    required this.border,
    required this.divider,
    required this.buttonPrimaryText,
    required this.inputBorder,
    required this.inputBorderFocused,
    required this.errorSubTitle,
    required this.bannerBackgroundWarning,
    required this.backgroundBlue,
    required this.warningSubtitle,
    required this.gradientBlue,
    required this.gradientBlueLight,
    required this.cardBackgroundInfo,
    required this.cardBackground,
    required this.route,
    required this.navigation,
    required this.progressFilled,
  });

  @override
  final Color primary;
  @override
  final Color secondary;
  @override
  final Color tertiary;
  @override
  final Color quaternary;
  @override
  final AppBackgrounds backgrounds;
  @override
  final Color surface;
  @override
  final Color onSurface;
  @override
  final Color textPrimary;
  @override
  final Color textSecondary;
  @override
  final Color textTertiary;
  @override
  final Color textInverse;
  @override
  final Color textDisabled;
  @override
  final Color textLink;
  @override
  final Color buttonDisabled;
  @override
  final Color success;
  @override
  final Color error;
  @override
  final Color warning;
  @override
  final Color info;
  @override
  final Color border;
  @override
  final Color divider;
  @override
  final Color buttonPrimaryText;
  @override
  final Color inputBorder;
  @override
  final Color inputBorderFocused;
  @override
  final Color errorSubTitle;
  @override
  final Color bannerBackgroundWarning;
  @override
  final Color bannerBackgroundInfo;
  @override
  final Color bannerBackgroundError;
  @override
  final Color backgroundBlue;
  @override
  final Color warningSubtitle;
  @override
  final Color gradientBlue;
  @override
  final Color gradientBlueLight;
  @override
  final Color cardBackgroundInfo;
  @override
  final Color cardBackground;
  @override
  final Color route;
  @override
  final Color navigation;
  @override
  final Color progressFilled;

  static AppColors lerp(AppColors a, AppColors b, double t) => AppColorsLerp(
    primary: Color.lerp(a.primary, b.primary, t)!,
    secondary: Color.lerp(a.secondary, b.secondary, t)!,
    tertiary: Color.lerp(a.tertiary, b.tertiary, t)!,
    quaternary: Color.lerp(a.quaternary, b.quaternary, t)!,
    backgrounds: LerpedBackgrounds.lerp(a.backgrounds, b.backgrounds, t),
    surface: Color.lerp(a.surface, b.surface, t)!,
    onSurface: Color.lerp(a.onSurface, b.onSurface, t)!,
    textPrimary: Color.lerp(a.textPrimary, b.textPrimary, t)!,
    textSecondary: Color.lerp(a.textSecondary, b.textSecondary, t)!,
    textTertiary: Color.lerp(a.textTertiary, b.textTertiary, t)!,
    textInverse: Color.lerp(a.textInverse, b.textInverse, t)!,
    textDisabled: Color.lerp(a.textDisabled, b.textDisabled, t)!,
    textLink: Color.lerp(a.textLink, b.textLink, t)!,
    buttonDisabled: Color.lerp(a.buttonDisabled, b.buttonDisabled, t)!,
    success: Color.lerp(a.success, b.success, t)!,
    error: Color.lerp(a.error, b.error, t)!,
    warning: Color.lerp(a.warning, b.warning, t)!,
    info: Color.lerp(a.info, b.info, t)!,
    border: Color.lerp(a.border, b.border, t)!,
    divider: Color.lerp(a.divider, b.divider, t)!,
    buttonPrimaryText: Color.lerp(a.buttonPrimaryText, b.buttonPrimaryText, t)!,
    inputBorder: Color.lerp(a.inputBorder, b.inputBorder, t)!,
    cardBackgroundInfo: Color.lerp(a.cardBackgroundInfo, b.cardBackgroundInfo, t)!,
    cardBackground: Color.lerp(a.cardBackground, b.cardBackground, t)!,
    inputBorderFocused: Color.lerp(
      a.inputBorderFocused,
      b.inputBorderFocused,
      t,
    )!,
    errorSubTitle: Color.lerp(a.errorSubTitle, b.errorSubTitle, t)!,
    bannerBackgroundWarning: Color.lerp(
      a.bannerBackgroundWarning,
      b.bannerBackgroundWarning,
      t,
    )!,
    bannerBackgroundInfo: Color.lerp(
      a.bannerBackgroundInfo,
      b.bannerBackgroundInfo,
      t,
    )!,
    bannerBackgroundError: Color.lerp(
      a.bannerBackgroundError,
      b.bannerBackgroundError,
      t,
    )!,
    backgroundBlue: Color.lerp(
      a.backgroundBlue,
      b.backgroundBlue,
      t,
    )!,
    warningSubtitle: Color.lerp(
      a.warningSubtitle,
      b.warningSubtitle,
      t,
    )!,
    gradientBlue: Color.lerp(
      a.gradientBlue,
      b.gradientBlue,
      t,
    )!,
    gradientBlueLight: Color.lerp(
      a.gradientBlueLight,
      b.gradientBlueLight,
      t,
    )!,
    route: Color.lerp(a.route, b.route, t)!,
    navigation: Color.lerp(a.navigation, b.navigation, t)!,
    progressFilled: Color.lerp(a.progressFilled, b.progressFilled, t)!,
  );

}
