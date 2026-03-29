import 'package:koora_kick/common/theme/responsive/scaled_app_dimensions.dart';
import 'package:koora_kick/common/theme/responsive/scaled_font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/default/ramadan_app_colors.dart';
import 'package:koora_kick/common/theme/default/dark_app_colors.dart';
import 'package:koora_kick/common/theme/app_theme_extension.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/theme/app_dimensions.dart';
import 'package:koora_kick/common/theme/app_borders.dart';
import 'package:koora_kick/common/theme/app_font_sizes.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';

import 'package:koora_kick/common/theme/default/default_colors.dart';
import 'package:koora_kick/common/theme/default/default_typography.dart';
import 'package:koora_kick/common/theme/default/default_dimensions.dart';
import 'package:koora_kick/common/theme/default/default_borders.dart';
import 'package:koora_kick/common/theme/default/default_font_sizes.dart';

class AppThemeManager {
  AppThemeManager._({
    required AppColors colors,
    required AppTypography typo,
    required AppFontSizes fontSizes,
    required AppDimensions dimensions,
    AppBorders? borders,
  })  : _colors = colors,
        _typo = typo,
        _fontSizes = fontSizes,
        _dimensions = dimensions,
        _borders = borders;

  final AppColors _colors;
  final AppTypography _typo;
  final AppFontSizes _fontSizes;
  final AppDimensions _dimensions;
  final AppBorders? _borders;

  static AppThemeManager withLight({String languageCode = 'en'}) {
    final colors = DefaultAppColors();
    final fontSizes = DefaultFontSizes();
    final dimensions = DefaultAppDimensions();
    final typo = DefaultTypography(
      colors: colors,
      fontSizes: fontSizes,
      languageCode: languageCode,
    );
    final borders = DefaultBorders(colors, dimensions);

    return AppThemeManager._(
      colors: colors,
      typo: typo,
      fontSizes: ScaledFontSizes(fontSizes),
      dimensions: ScaledAppDimensions(dimensions),
      borders: borders,
    );
  }

  static AppThemeManager withDark({String languageCode = 'en'}) {
    final colors = DarkAppColors();
    final fontSizes = DefaultFontSizes();
    final dimensions = DefaultAppDimensions();
    final typo = DefaultTypography(
      colors: colors,
      fontSizes: fontSizes,
      languageCode: languageCode,
    );
    final borders = DefaultBorders(colors, dimensions);

    return AppThemeManager._(
      colors: colors,
      typo: typo,
      fontSizes: ScaledFontSizes(fontSizes),
      dimensions: dimensions,
      borders: borders,
    );
  }

  AppThemeManager withRamadanMode({String languageCode = 'en'}) {
    final newColors = RamadanAppColors();
    final newTypo = DefaultTypography(
      colors: newColors,
      fontSizes: _fontSizes,
      languageCode: languageCode,
    );
    final newBorders = DefaultBorders(newColors, _dimensions);

    return AppThemeManager._(
      colors: newColors,
      typo: newTypo,
      fontSizes: ScaledFontSizes(_fontSizes),
      dimensions: _dimensions,
      borders: newBorders,
    );
  }

  AppThemeManager setColors(AppColors newColors, {String languageCode = 'en'}) {
    final newTypo = DefaultTypography(
      colors: newColors,
      fontSizes: _fontSizes,
      languageCode: languageCode,
    );
    final newBorders = DefaultBorders(newColors, _dimensions);
    return AppThemeManager._(
      colors: newColors,
      typo: newTypo,
      fontSizes: ScaledFontSizes(_fontSizes),
      dimensions: _dimensions,
      borders: newBorders,
    );
  }

  ThemeData build() {
    final borders = _borders ?? DefaultBorders(_colors, _dimensions);
    final themeExtension = AppThemeExtension(
      colors: _colors,
      typo: _typo,
      dimensions: ScaledAppDimensions(_dimensions),
      borders: borders,
    );

    Color getColor(AppBackgroundProperty prop) => prop.maybeWhen(
        solid: (color) => color,
        orElse: () => Colors.transparent,
      );
    
    final surfaceColor = getColor(_colors.backgrounds.surface);
    final backgroundColor = getColor(_colors.backgrounds.primary);
    final scaffoldColor = getColor(_colors.backgrounds.scaffold);

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: _colors.primary,
        onPrimary: _colors.textInverse,
        secondary: _colors.secondary,
        onSecondary: _colors.textInverse,
        error: _colors.error,
        onError: _colors.textInverse,
        surface: surfaceColor,
        onSurface: _colors.textPrimary,
        background: backgroundColor,
        onBackground: _colors.textPrimary,
      ),
      scaffoldBackgroundColor: scaffoldColor,
      extensions: [themeExtension],
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: EdgeInsets.all(_dimensions.medium),
        hintStyle: _typo.bodyMedium.copyWith(color: _colors.textSecondary),
        border: borders.inputEnabledBorder,
        enabledBorder: borders.inputEnabledBorder,
        focusedBorder: borders.inputFocusedBorder,
        errorBorder: borders.inputErrorBorder,
      ),
    );
  }
}