import 'dart:ui';
import 'package:koora_kick/common/theme/app_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimensionsLerp extends AppDimensions {
  const AppDimensionsLerp({
    required this.xSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.xLarge,
    required this.xxLarge,
    required this.xxxLarge,
    required this.pagePadding,
    required this.pageTopPadding,
    required this.pageBottomPadding,
    required this.cardPadding,
    required this.gapSmall,
    required this.gapMedium,
    required this.radiusXSmall,
    required this.radiusSmall,
    required this.radiusMedium,
    required this.radiusLarge,
    required this.radiusXLarge,
    required this.radiusXXLarge,
    required this.appBarSize,
    required this.iconSizeSmall,
    required this.iconSizeMedium,
    required this.iconSizeLarge,
    required this.buttonHeight,
    required this.buttonMaxWidth,
    required this.countryFlagHeight,
    required this.countryFlagWidth,
    required this.pinFieldHeight,
    required this.pinFieldWidth,
  });

  @override final double xSmall;
  @override final double small;
  @override final double medium;
  @override final double large;
  @override final double xLarge;
  @override final double xxLarge;
  @override final double xxxLarge;
  @override final double pagePadding;
  @override final double pageTopPadding;
  @override final double pageBottomPadding;
  @override final double cardPadding;
  @override final double gapSmall;
  @override final double gapMedium;
  @override final double radiusXSmall;
  @override final double radiusSmall;
  @override final double radiusMedium;
  @override final double radiusLarge;
  @override final double radiusXLarge;
  @override final double radiusXXLarge;
  @override final double appBarSize;

  @override final double iconSizeSmall;
  @override final double iconSizeMedium;
  @override final double iconSizeLarge;
  @override final double buttonHeight;
  @override final double buttonMaxWidth;
  @override final double countryFlagHeight;
  @override final double countryFlagWidth;
  @override final double pinFieldHeight;
  @override final double pinFieldWidth;

  @override
  double h(double value) => value.h;

  @override
  double w(double value) => value.w;

  @override
  double r(double value) => value.r;

  static AppDimensions lerp(
      AppDimensions a,
      AppDimensions b,
      double t,
      ) => AppDimensionsLerp(
      xSmall: lerpDouble(a.xSmall, b.xSmall, t)!,
      small: lerpDouble(a.small, b.small, t)!,
      medium: lerpDouble(a.medium, b.medium, t)!,
      large: lerpDouble(a.large, b.large, t)!,
      xLarge: lerpDouble(a.xLarge, b.xLarge, t)!,
      xxLarge: lerpDouble(a.xxLarge, b.xxLarge, t)!,
      xxxLarge: lerpDouble(a.xxxLarge, b.xxxLarge, t)!,

      pagePadding: lerpDouble(a.pagePadding, b.pagePadding, t)!,
      pageTopPadding: lerpDouble(a.pageTopPadding, b.pageTopPadding, t)!,
      pageBottomPadding: lerpDouble(a.pageBottomPadding, b.pageBottomPadding, t)!,
      cardPadding: lerpDouble(a.cardPadding, b.cardPadding, t)!,

      gapSmall: lerpDouble(a.gapSmall, b.gapSmall, t)!,
      gapMedium: lerpDouble(a.gapMedium, b.gapMedium, t)!,

      radiusXSmall: lerpDouble(a.radiusXSmall, b.radiusXSmall, t)!,
      radiusSmall: lerpDouble(a.radiusSmall, b.radiusSmall, t)!,
      radiusMedium: lerpDouble(a.radiusMedium, b.radiusMedium, t)!,
      radiusLarge: lerpDouble(a.radiusLarge, b.radiusLarge, t)!,
      radiusXLarge: lerpDouble(a.radiusXLarge, b.radiusXLarge, t)!,
      radiusXXLarge: lerpDouble(a.radiusXXLarge, b.radiusXXLarge, t)!,

      appBarSize: lerpDouble(a.appBarSize, b.appBarSize, t)!,

      iconSizeSmall: lerpDouble(a.iconSizeSmall, b.iconSizeSmall, t)!,
      iconSizeMedium: lerpDouble(a.iconSizeMedium, b.iconSizeMedium, t)!,
      iconSizeLarge: lerpDouble(a.iconSizeLarge, b.iconSizeLarge, t)!,
      buttonHeight: lerpDouble(a.buttonHeight, b.buttonHeight, t)!,
      buttonMaxWidth: lerpDouble(a.buttonMaxWidth, b.buttonMaxWidth, t)!,
      countryFlagHeight: lerpDouble(a.countryFlagHeight, b.countryFlagHeight, t)!,
      countryFlagWidth: lerpDouble(a.countryFlagWidth, b.countryFlagWidth, t)!,
      pinFieldHeight: lerpDouble(a.pinFieldHeight, b.pinFieldHeight, t)!,
      pinFieldWidth: lerpDouble(a.pinFieldWidth, b.pinFieldWidth, t)!,
    );
}