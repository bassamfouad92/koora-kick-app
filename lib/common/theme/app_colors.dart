import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';

abstract class AppColors {
  // --- Brand Colors ---
  Color get primary;
  Color get secondary;
  Color get tertiary;
  Color get quaternary;

  // --- Backgrounds ---
  AppBackgrounds get backgrounds;
  Color get surface;
  Color get onSurface;

  // --- Texts ---
  Color get textPrimary;
  Color get textSecondary;
  Color get textTertiary;
  Color get textInverse;
  Color get textDisabled;
  Color get textLink;

  // --- Buttons ---
  Color get buttonDisabled;

  // --- Status ---
  Color get success;
  Color get error;
  Color get warning;
  Color get info;
  Color get errorSubTitle;

  // --- Borders ---
  Color get border;
  Color get divider;

  // --- Components ---
  Color get buttonPrimaryText;
  Color get inputBorder;
  Color get inputBorderFocused;

  Color get bannerBackgroundWarning;
  Color get bannerBackgroundInfo;
  Color get bannerBackgroundError;

  Color get backgroundBlue;

  Color get warningSubtitle;
  Color get gradientBlue;
  Color get gradientBlueLight;

  // --- Cards ---
  Color get cardBackgroundInfo;
  Color get cardBackground;

  // --- Map ---
  Color get route;
  Color get navigation;

  // --- Progress ---
  Color get progressFilled;
}

abstract class AppBackgrounds {
  AppBackgroundProperty get primary;
  AppBackgroundProperty get secondary;
  AppBackgroundProperty get scaffold;
  AppBackgroundProperty get surface;
  AppBackgroundProperty get splash;
  AppBackgroundProperty get overlay;
}
