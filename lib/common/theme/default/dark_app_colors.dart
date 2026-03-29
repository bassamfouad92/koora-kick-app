import 'package:koora_kick/common/common.dart' hide AppColors;
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/common/constants/app_colors.dart' as constants;
class DarkAppColors extends AppColors {
  // --- Primitives ---
  static const _brandYellow = Color(0xFFE6B800); // Slightly darker Yellow
  static const _brandRed = Color(0xFFFC153B); // Keep for some elements if needed, but Primary is Yellow now.
  
  // Text Colors (Inverted for Dark Mode)
  static const _textPrimary = Color(0xFFEEEEEE); // High emphasis - Brighter Gray/White
  static const _textSecondary = Color(0xFFB0B0B0); // Medium emphasis
  static const _textTertiary = Color(0xFF757575); // Disabled/Low emphasis
  static const _textInverse = Color(0xFF121212); // Text on primary (which is now Yellow, so Black text is good)
  
  // Status Colors
  static const _successGreen = Color(0xFF03CAA6); 
  static const _errorRed = Color(0xFFCF6679); 
  static const _warningOrange = Color(0xFFFFB74D);
  static const _infoBlue = Color(0xFF64B5F6);
  static const _summaryBlue = Color(0xFF2C3E50); // Darker blue for summary
  static const _border = Color(0xFF333333);
  static const _darkBackground = Color(0xFF121212);
  static const _darkSurface = Color(0xFF1E1E1E);
  static const _darkOverlay = Colors.white24;
  static const _buttonDisabledColor = Color(0xFF555555); // Darker disabled

  // --- Implementation ---

  @override
  Color get primary => _brandYellow; 

  @override
  Color get secondary => _brandYellow; 

  @override
  Color get tertiary => _infoBlue;
  
  @override
  Color get quaternary => const Color(0xFF969696);

  @override
  AppBackgrounds get backgrounds => const _DarkBackgrounds();

  @override
  Color get textPrimary => _textPrimary;

  @override
  Color get textSecondary => _textSecondary;

  @override
  Color get textTertiary => _textTertiary;

  @override
  Color get textInverse => _textInverse;

  @override
  Color get textDisabled => _textTertiary;
  
  @override
  Color get textLink => _brandYellow; // Yellow links on dark

  @override
  Color get success => _successGreen;

  @override
  Color get error => _errorRed;

  @override
  Color get warning => _warningOrange;

  @override
  Color get info => _infoBlue;

  @override
  Color get border => _border;

  @override
  Color get divider => _border;
  
  @override
  Color get buttonPrimaryText => _textInverse;

  @override
  Color get inputBorder => _brandYellow; // User requested Yellow

  @override
  Color get inputBorderFocused => _brandYellow;
  
  @override
  Color get errorSubTitle => _brandYellow;

  @override
  Color get bannerBackgroundWarning => _warningOrange.withOpacity(0.1);

  @override
  Color get bannerBackgroundInfo => _infoBlue.withOpacity(0.1);

  @override
  Color get bannerBackgroundError => _errorRed.withOpacity(0.1);

  @override
  Color get backgroundBlue => _summaryBlue;

  @override
  Color get warningSubtitle => _warningOrange.withOpacity(0.1);

  @override
  Color get gradientBlue => const Color(0xFF0D47A1);

  @override
  Color get gradientBlueLight => const Color(0xFF42A5F5);

  @override
  Color get buttonDisabled => _buttonDisabledColor;

  @override
  Color get onSurface => _textPrimary;

  @override
  Color get surface => _darkSurface;

  @override
  Color get cardBackgroundInfo => _summaryBlue;

  @override
  Color get cardBackground => _darkSurface;

  @override
  Color get route => _brandYellow;

  @override
  Color get navigation => Colors.deepPurple;

  @override
  Color get progressFilled => const Color(0xFFab8902);
}


class _DarkBackgrounds implements AppBackgrounds {
  const _DarkBackgrounds();

  static const _splashGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF101010),
      Color(0xFF2C3E50),
      Color(0xFF000000),
    ],
  );

  @override
  AppBackgroundProperty get primary => const AppBackgroundProperty.gradient(_splashGradient);

  @override
  AppBackgroundProperty get secondary => const AppBackgroundProperty.solid(DarkAppColors._darkSurface);

  @override
  AppBackgroundProperty get scaffold => const AppBackgroundProperty.solid(DarkAppColors._darkBackground);
  
  @override
  AppBackgroundProperty get surface => const AppBackgroundProperty.solid(DarkAppColors._darkSurface);

  @override
  AppBackgroundProperty get splash => const AppBackgroundProperty.gradient(_splashGradient);
  
  @override
  AppBackgroundProperty get overlay => const AppBackgroundProperty.solid(DarkAppColors._darkOverlay);
}
