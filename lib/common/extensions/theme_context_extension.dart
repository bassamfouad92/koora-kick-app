import 'package:flutter/material.dart';
import '../theme/app_theme_extension.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';
import '../theme/app_dimensions.dart';
import '../theme/app_borders.dart';

extension ThemeContext on BuildContext {
  AppThemeExtension get _appTheme => Theme.of(this).extension<AppThemeExtension>()!;
  AppColors get colors => _appTheme.colors;
  AppTypography get typo => _appTheme.typo;
  AppDimensions get dimensions => _appTheme.dimensions;
  AppBorders get borders => _appTheme.borders;
}
