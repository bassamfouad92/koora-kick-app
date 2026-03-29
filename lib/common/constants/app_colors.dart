import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Neutral base colors
  static const neutral100 = Color(0xFFF9FAFB);
  static const neutral200 = Color(0xFFF3F4F6);
  static const neutral300 = Color(0xFFE5E7EB);
  static const neutral400 = Color(0xFFD1D5DB);
  static const neutral500 = Color(0xFF9CA3AF);
  static const neutral600 = Color(0xFF6B7280);
  static const neutral700 = Color(0xFF4B5563);
  static const neutral800 = Color(0xFF374151);
  static const neutral900 = Color(0xFF1F2937);
  static const neutral1000 = Color(0xFFFFF8E1);
  static const neutral1100 = Color(0xFFB45309);
  static const neutral1200 = Color(0xFFEFF6FF);
  static const primary = Color(0xFFFC153B);
  static const secondary = Colors.white;

  static const textStrong = neutral900;
  static const textDefault = neutral800;
  static const textSubtle = neutral600;
  static const textPlaceholder = neutral500;
  static const textDisabled = neutral400;
  static const textOnSurface = Colors.white;
  static const borderDefault = neutral300;
  static const borderStrong = neutral400;
  static const borderDisabled = neutral200;
  static const inputBorderDefault = neutral500;
  static const inputBorderFocused = neutral900;
  static const inputBorderError = Color(0xFFEF4444);
  static const inputBorderDisabled = neutral300;
  static const iconDefault = neutral800;
  static const iconSecondary = neutral600;
  static const iconDisabled = neutral400;
  static const progressFilledColor = Color(0xFFD3002E);
  static const buttonDisabledColor = Color(0xFFFD7389);
  static const bannerBackgroundWarning = neutral1000;
  static const iconWarning = neutral1100;
  static const bannerBackgroundBlue = neutral1200;
  static const textInProgress = Color(0xFF2563EB);
  static const textError = Color(0xFFDC2626);
  static const textCompleted = Color(0xFF059669);
  static const summaryBoxColor = Color(0xFFE5F1F8);
  static const dateIndicatorUnSelectedColor = Color(0xFF1F2937);

  // Map route colors
  static const route = neutral600; // Gray route color
  static const navigation = Color(0xFFFC153B); // Orange navigation path (same as primary)


  // Semantic colors for success and warnings
  static const successStatus = Color(0xFF059669); // Green for success states
  static const pendingStatus = Color(0xFFB45309); // Orange for warning/partial states
  static const successSubTitle = Color(0xFFF3FCF8);
  static const transparent = Colors.transparent;

  static const gradientBackgroundPrimarySplash = LinearGradient(
    begin: AlignmentDirectional(-0.5, -1.0), // approximate 192° direction
    end: AlignmentDirectional(0.5, 1.0),
    colors: [
      Color(0xFFFFFFFF),     // #FFF
      Color(0xFFE8F5FA),     // 28.83%
      Color(0xFFE1EBF6),     // 50.43%
      Color(0xFFDBE1F2),     // 69.21%
    ],
    stops: [
      0.0,
      0.3,
      0.5,
      0.7,
    ],
  );

  static const gradientBackgroundPrimarySplashDark = LinearGradient(
    begin: AlignmentDirectional(-0.5, -1.0),
    end: AlignmentDirectional(0.5, 1.0),
    colors: [
      Color(0xFF1F2937), // neutral900
      Color(0xFF111827), // darker
      Color(0xFF030712), // almost black
    ],
    stops: [0.0, 0.5, 1.0],
  );

  /// Gradient: Hero background (top-down gradient)
  static const gradientBackgroundPrimaryHero = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFFFFFFFF), // #FFFFFF at 0%
      Color(0xFFE8F5FA), // #E8F5FA at 49.03%
      Color(0xFFDBE2F2), // #DBE2F2 at 100%
    ],
    stops: [0.0, 0.4903, 1.0],
  );

  /// Gradient: Icon (approximate 89° angle, left-to-right)
  static const bannerGradient = LinearGradient(
    colors: [Color(0xFF3FCFD8), Color(0xFF0D4DAF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const gradientIcon = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF3FD0D8),
      Color(0xFF0336A7),
    ],
    stops: [0.0064, 1.1277],
  );

  static Color fromHexCodeString(String? hexCode, Color defaultColor) {
    if (hexCode == null) {
      return defaultColor;
    }

    final colorString = hexCode.replaceAll('#', 'FF');
    return Color(int.parse(colorString, radix: 16));
  }
}
