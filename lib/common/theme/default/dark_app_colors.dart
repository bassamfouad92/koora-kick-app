import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';

class DarkAppColors extends AppColors {
  // --- Primitives ---
  /// Brand green sampled from the KooraKick logo.
  static const _brandGreen = Color(0xFF30A058);
  static const _brandGreenBright = Color(0xFF3EBC6B);

  // Text Colors (Inverted for Dark Mode)
  static const _textPrimary = Color(0xFFF2F5F3); // High emphasis
  static const _textSecondary = Color(0xFFADB8B1); // Medium emphasis
  static const _textTertiary = Color(0xFF6F7A74); // Disabled/Low emphasis
  static const _textInverse = Color(0xFF0A130D); // Text on light surfaces

  // Status Colors
  static const _successGreen = Color(0xFF03CAA6);
  static const _errorRed = Color(0xFFCF6679);
  static const _warningOrange = Color(0xFFFFB74D);
  static const _infoBlue = Color(0xFF64B5F6);
  static const _summaryBlue = Color(0xFF2C3E50); // Darker blue for summary
  static const _border = Color(0xFF33403A); // Subtle green-gray outline
  static const _darkBackground = Color(0xFF0A130D); // Green-tinted near black
  static const _darkSurface = Color(0xFF16211A);
  static const _darkOverlay = Colors.white24;
  static const _buttonDisabledColor = Color(0xFF3C4A42);

  // --- Implementation ---

  @override
  Color get primary => _brandGreen;

  @override
  Color get secondary => _darkSurface;

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
  Color get textLink => _brandGreenBright;

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
  Color get buttonPrimaryText => Colors.white;

  @override
  Color get inputBorder => _border;

  @override
  Color get inputBorderFocused => _brandGreen;

  @override
  Color get errorSubTitle => _errorRed.withOpacity(0.1);

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
  Color get route => _brandGreen;

  @override
  Color get navigation => _brandGreen;

  @override
  Color get progressFilled => _brandGreen;
}


class _DarkBackgrounds implements AppBackgrounds {
  const _DarkBackgrounds();

  static const _splashGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF101B13),
      Color(0xFF0A130D),
      Color(0xFF060C08),
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
