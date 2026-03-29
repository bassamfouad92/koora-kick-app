import 'package:koora_kick/common/theme/app_theme_extension.dart';
import 'package:flutter/material.dart';

enum AppInputBorderType { outline, underline, none }

class AppInputFieldStyle {
  const AppInputFieldStyle({
    this.textStyle,
    this.hintStyle,
    this.labelStyle,
    this.backgroundColor,
    this.borderColor,
    this.padding,
    this.margin,
    this.prefixIcon,
    this.suffixIcon,
    this.borderType = AppInputBorderType.outline,
  });

  factory AppInputFieldStyle.fromTheme(BuildContext context) {
    final colors = context.colors;
    final typo = context.typo;
    final dimensions = context.dimensions;

    return AppInputFieldStyle(
      textStyle: typo.bodyMedium,
      hintStyle: typo.bodyMedium.copyWith(color: colors.textTertiary),
      labelStyle: typo.bodySmall.copyWith(color: colors.textSecondary),
      padding: EdgeInsets.all(dimensions.medium),
    );
  }
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final AppInputBorderType borderType;

  AppInputFieldStyle copyWith({
    TextStyle? textStyle,
    TextStyle? hintStyle,
    TextStyle? labelStyle,
    Color? backgroundColor,
    Color? borderColor,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Widget? prefixIcon,
    Widget? suffixIcon,
    AppInputBorderType? borderType,
  }) => AppInputFieldStyle(
    textStyle: textStyle ?? this.textStyle,
    hintStyle: hintStyle ?? this.hintStyle,
    labelStyle: labelStyle ?? this.labelStyle,
    backgroundColor: backgroundColor ?? this.backgroundColor,
    borderColor: borderColor ?? this.borderColor,
    padding: padding ?? this.padding,
    margin: margin ?? this.margin,
    prefixIcon: prefixIcon ?? this.prefixIcon,
    suffixIcon: suffixIcon ?? this.suffixIcon,
    borderType: borderType ?? this.borderType,
  );

  InputBorder buildBorder({
    required AppThemeExtension theme,
    bool hasError = false,
    bool isFocused = false,
  }) {
    final color = switch ((hasError, isFocused)) {
      (true, _) => theme.colors.error,
      (_, true) => borderColor ?? theme.colors.inputBorderFocused,
      _ => borderColor ?? theme.colors.border,
    };

    return switch (borderType) {
      AppInputBorderType.none => InputBorder.none,
      AppInputBorderType.underline => UnderlineInputBorder(
        borderSide: BorderSide(color: color, width: isFocused ? 2 : 1),
      ),
      AppInputBorderType.outline => (() {
        final border = hasError
            ? theme.borders.inputErrorBorder
            : (isFocused
                  ? theme.borders.inputFocusedBorder
                  : theme.borders.inputEnabledBorder);
        return (hasError || borderColor == null)
            ? border
            : border.copyWith(
                borderSide: border.borderSide.copyWith(color: borderColor),
              );
      })(),
    };
  }
}
