import 'package:flutter/material.dart';

@immutable
class AppFontWeights {
  const AppFontWeights._();

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

abstract class AppTypography {
  TextStyle get headingExtraLarge;
  TextStyle get headingLarge;
  TextStyle get headingMedium;
  TextStyle get headingSmall;
  TextStyle get headingExtraSmall;

  TextStyle get bodyExtraSmall;
  TextStyle get bodySmall;
  TextStyle get bodyMedium;
  TextStyle get bodyLarge;

  TextStyle get navigationTitle;
  TextStyle get caption;
  TextStyle get captionLink;
  TextStyle get buttonPrimary;
  TextStyle get buttonMedium;
  TextStyle get inlineLink;
  TextStyle get label;
  TextStyle get input;
  TextStyle get warningMessage;
  TextStyle get errorMessage;
}

extension TextStyleWeights on TextStyle {
  TextStyle get regular => copyWith(fontWeight: AppFontWeights.regular);
  TextStyle get medium => copyWith(fontWeight: AppFontWeights.medium);
  TextStyle get semiBold => copyWith(fontWeight: AppFontWeights.semiBold);
  TextStyle get bold => copyWith(fontWeight: AppFontWeights.bold);
  TextStyle get extraBold => copyWith(fontWeight: AppFontWeights.extraBold);
  TextStyle get black => copyWith(fontWeight: AppFontWeights.black);

  TextStyle withColor(Color color) => copyWith(color: color);
}
