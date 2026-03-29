import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/common/constants/app_colors.dart' as constants;

class DefaultAppColors extends AppColors {
  static const _brandGreen = Color(0xFF1DB954);
  static const _neutral900 = Color(0xFF1F2937);
  static const _neutral800 = Color(0xFF374151);
  static const _neutral600 = Color(0xFF6B7280);
  static const _neutral500 = Color(0xFF9CA3AF);
  static const _neutral400 = Color(0xFFD1D5DB);
  static const _neutral300 = Color(0xFFE5E7EB);
  static const _neutral100 = Color(0xFFF9FAFB);
  static const _white = Colors.white;
  static const _applyBlue = Color(0xFF8DE8FF);
  static const _warningSubtitle = Color(0xFFFFF8E1);

  static const _gradientBlueDark = Color(0xFF0D47A1);
  static const _gradientBlueLight = Color(0xFF42A5F5);
  
  static const _successGreen = Color(0xFF059669);
  static const _errorRed = Color(0xFFDC2626);
  static const _warningOrange = Color(0xFFB45309);
  static const _infoBlue = Color(0xFF2563EB);
  static const errorSubTitleBackground = Color(0xFFFFF6F6);
  static const _buttonDisabledColor = Color(0xFFA5D6A7);
  static const _cardInfoBackground = Color(0xFFE5F1F8);
  
  @override
  Color get primary => _brandGreen;

  @override
  Color get secondary => _neutral900;

  @override
  Color get tertiary => _infoBlue;

  @override
  Color get quaternary => const Color(0xFF969696);

  @override
  AppBackgrounds get backgrounds => const _DefaultBackgrounds();

  @override
  Color get textPrimary => _neutral800;

  @override
  Color get textSecondary => _neutral600;

  @override
  Color get textTertiary => _neutral500;

  @override
  Color get textInverse => _white;

  @override
  Color get textDisabled => _neutral400;
  
  @override
  Color get textLink => _brandGreen;

  @override
  Color get success => _successGreen;

  @override
  Color get error => _errorRed;

  @override
  Color get warning => _warningOrange;

  @override
  Color get info => _infoBlue;

  @override
  Color get border => _neutral300;

  @override
  Color get divider => _neutral300;
  
  @override
  Color get buttonPrimaryText => _white;

  @override
  Color get inputBorder => _neutral500;

  @override
  Color get inputBorderFocused => _neutral900;

  @override
  Color get errorSubTitle => errorSubTitleBackground;

  @override
  Color get bannerBackgroundWarning => constants.AppColors.bannerBackgroundWarning;

  @override
  Color get bannerBackgroundInfo => constants.AppColors.bannerBackgroundBlue;

  @override
  Color get bannerBackgroundError => errorSubTitleBackground;

  @override
  Color get bannerBackgroundSuccess => const Color(0xFFE8F5E9);

  @override
  Color get backgroundBlue => _applyBlue;

  @override
  Color get warningSubtitle => _warningSubtitle;

  @override
  Color get gradientBlue => _gradientBlueDark;

  @override
  Color get gradientBlueLight => _gradientBlueLight;

  @override
  Color get buttonDisabled => _buttonDisabledColor;

  @override
  Color get onSurface => Colors.black;

  @override
  Color get surface => Colors.white;

  @override
  Color get cardBackgroundInfo => _cardInfoBackground;

  @override
  Color get cardBackground => _neutral100;

  @override
  Color get route => _neutral600;

  @override
  Color get navigation => _brandGreen;

  @override
  Color get progressFilled => const Color(0xFF2E7D32);
}


class _DefaultBackgrounds implements AppBackgrounds {
  const _DefaultBackgrounds();

  @override
  AppBackgroundProperty get primary => const AppBackgroundProperty.gradient(constants.AppColors.gradientBackgroundPrimaryHero);

  @override
  AppBackgroundProperty get secondary => const AppBackgroundProperty.solid(DefaultAppColors._brandGreen);

  @override
  AppBackgroundProperty get scaffold => const AppBackgroundProperty.gradient(constants.AppColors.gradientBackgroundPrimaryHero);
  
  @override
  AppBackgroundProperty get surface => const AppBackgroundProperty.solid(Colors.white);

  @override
  AppBackgroundProperty get splash => const AppBackgroundProperty.gradient(constants.AppColors.gradientBackgroundPrimarySplash);
  
  @override
  AppBackgroundProperty get overlay => const AppBackgroundProperty.solid(Colors.black54);
}
