import 'package:koora_kick/common/theme/lerped/app_borders_lerp.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/theme/app_dimensions.dart';
import 'package:koora_kick/common/theme/app_borders.dart';

import 'package:koora_kick/common/theme/lerped/app_colors_lerp.dart';
import 'package:koora_kick/common/theme/lerped/app_typography_lerp.dart';
import 'package:koora_kick/common/theme/lerped/app_dimensions_lerp.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {

  const AppThemeExtension({
    required this.colors,
    required this.typo,
    required this.dimensions,
    required this.borders,
  });
  final AppColors colors;
  final AppTypography typo;
  final AppDimensions dimensions;
  final AppBorders borders;

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    AppColors? colors,
    AppTypography? typo,
    AppDimensions? dimensions,
    AppBorders? borders,
  }) => AppThemeExtension(
      colors: colors ?? this.colors,
      typo: typo ?? this.typo,
      dimensions: dimensions ?? this.dimensions,
      borders: borders ?? this.borders,
    );

  @override
  AppThemeExtension lerp(
    ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) {
      return this;
    }
    return AppThemeLerp.lerp(this, other, t);
  }
}

class AppThemeLerp {
  static AppThemeExtension lerp(
    AppThemeExtension a,
    AppThemeExtension b,
    double t,
  ) => AppThemeExtension(
      colors: AppColorsLerp.lerp(a.colors, b.colors, t),
      typo: AppTypographyLerp.lerp(a.typo, b.typo, t),
      dimensions: AppDimensionsLerp.lerp(a.dimensions, b.dimensions, t),
      borders: AppBordersLerp.lerp(a.borders, b.borders, t),
    );
}
extension AppThemeContext on BuildContext {
  AppThemeExtension get appTheme => Theme.of(this).extension<AppThemeExtension>()!;
  AppColors get colors => appTheme.colors;
  AppTypography get typo => appTheme.typo;
  AppDimensions get dimensions => appTheme.dimensions;
  AppBorders get borders => appTheme.borders;
}
