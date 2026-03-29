import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_typography.dart';
import '../app_colors.dart';
import '../app_font_sizes.dart';

class DefaultTypography implements AppTypography {
  DefaultTypography({
    required this.colors,
    required this.fontSizes,
    this.languageCode = 'en',
  });
  final AppColors colors;
  final AppFontSizes fontSizes;
  final String languageCode;

  bool get _isArabic => languageCode == 'ar';

  TextStyle _fontHeading(double size, FontWeight weight, Color color) {
    if (_isArabic) {
      return GoogleFonts.cairo(fontSize: size, fontWeight: weight, color: color);
    }
    return GoogleFonts.sora(fontSize: size, fontWeight: weight, color: color);
  }

  TextStyle _fontBody(double size, FontWeight weight, Color color) {
    if (_isArabic) {
      return GoogleFonts.cairo(fontSize: size, fontWeight: weight, color: color);
    }
    return GoogleFonts.inter(fontSize: size, fontWeight: weight, color: color);
  }

  @override
  TextStyle get headingExtraLarge => _fontHeading(fontSizes.headingExtraLarge, AppFontWeights.extraBold, colors.textPrimary);
  @override
  TextStyle get headingLarge => _fontHeading(fontSizes.headingLarge, AppFontWeights.bold, colors.textPrimary);
  @override
  TextStyle get headingMedium => _fontHeading(fontSizes.headingMedium, AppFontWeights.semiBold, colors.textPrimary);
  @override
  TextStyle get headingSmall => _fontHeading(fontSizes.headingSmall, AppFontWeights.semiBold, colors.textPrimary);
  @override
  TextStyle get headingExtraSmall => _fontHeading(fontSizes.headingExtraSmall, AppFontWeights.semiBold, colors.textPrimary);

  @override
  TextStyle get bodyExtraSmall => _fontBody(fontSizes.bodyExtraSmall, AppFontWeights.regular, colors.textPrimary);
  @override
  TextStyle get bodySmall => _fontBody(fontSizes.bodySmall, AppFontWeights.regular, colors.textPrimary);
  @override
  TextStyle get bodyMedium => _fontBody(fontSizes.bodyMedium, AppFontWeights.regular, colors.textPrimary);
  @override
  TextStyle get bodyLarge => _fontBody(fontSizes.bodyLarge, AppFontWeights.regular, colors.textPrimary);

  @override
  TextStyle get navigationTitle => _fontBody(fontSizes.headingExtraSmall, AppFontWeights.black, colors.textPrimary);
  @override
  TextStyle get caption => _fontBody(fontSizes.bodySmall, AppFontWeights.regular, colors.textSecondary);
  @override
  TextStyle get captionLink => _fontBody(fontSizes.bodySmall, AppFontWeights.semiBold, colors.textLink).copyWith(decoration: TextDecoration.underline);
  @override
  TextStyle get buttonPrimary => _fontBody(fontSizes.headingExtraSmall, AppFontWeights.semiBold, colors.buttonPrimaryText);
  @override
  TextStyle get buttonMedium => _fontBody(fontSizes.buttonMedium, AppFontWeights.medium, colors.textPrimary);
  @override
  TextStyle get inlineLink => _fontBody(fontSizes.headingExtraSmall, AppFontWeights.semiBold, colors.textLink).copyWith(decoration: TextDecoration.underline);
  @override
  TextStyle get label => _fontBody(fontSizes.bodySmall, AppFontWeights.medium, colors.textSecondary).copyWith(letterSpacing: 0.5);
  @override
  TextStyle get input => _fontBody(fontSizes.headingExtraSmall, AppFontWeights.regular, colors.textPrimary);
  @override
  TextStyle get warningMessage => _fontBody(fontSizes.bodySmall, AppFontWeights.medium, colors.warning);
  @override
  TextStyle get errorMessage => _fontBody(fontSizes.bodySmall, AppFontWeights.medium, colors.error);
}
