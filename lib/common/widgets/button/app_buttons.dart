import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/theme/app_theme_extension.dart';
import 'package:koora_kick/common/theme/app_colors.dart' as theme;
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

enum AppButtonType {
  primary,
  secondary,
  outline,
  text,
  icon,
  underline,
  circular,
  floating,
}

class AppButton extends StatelessWidget {
  const AppButton._({
    required this.onPressed,
    required this.type,
    this.text,
    this.leftIcon,
    this.rightIcon,
    this.width,
    this.height,
    this.textWidget,
    this.isDisabled = false,
    this.backgroundColor,
    this.opacity,
    this.iconColor,
    this.border,
  });

  factory AppButton.primary(
    String text, {
    required VoidCallback onPressed,
    double? width,
  }) => AppButton._(
    text: text,
    onPressed: onPressed,
    type: AppButtonType.primary,
    width: width,
  );

  factory AppButton.underline(String text, {required VoidCallback onPressed}) =>
      AppButton._(
        text: text,
        onPressed: onPressed,
        type: AppButtonType.underline,
      );

  factory AppButton.secondary(String text, {required VoidCallback onPressed}) =>
      AppButton._(
        text: text,
        onPressed: onPressed,
        type: AppButtonType.secondary,
      );

  factory AppButton.outline(String text, {required VoidCallback onPressed}) =>
      AppButton._(
        text: text,
        onPressed: onPressed,
        type: AppButtonType.outline,
      );

  factory AppButton.text({String? text, required VoidCallback onPressed}) =>
      AppButton._(text: text, onPressed: onPressed, type: AppButtonType.text);

  factory AppButton.icon(Widget? icon, {required VoidCallback onPressed}) =>
      AppButton._(
        onPressed: onPressed,
        leftIcon: icon,
        type: AppButtonType.icon,
      );

  factory AppButton.circular({
    required VoidCallback onPressed,
    Widget? icon,
    double? size,
    double? opacity,
    bool isDisabled = false,
    Color? backgroundColor,
    Color? iconColor,
  }) =>
      AppButton._(
        onPressed: onPressed,
        leftIcon: icon,
        type: AppButtonType.circular,
        width: size,
        height: size,
        opacity: opacity,
        isDisabled: isDisabled,
        backgroundColor: backgroundColor,
        iconColor: iconColor,
      );

  factory AppButton.floating({
    required VoidCallback onPressed,
    Widget? icon,
    double? size,
    Color? backgroundColor,
    Color? iconColor,
    BorderSide? border,
    bool isDisabled = false,
  }) =>
      AppButton._(
        onPressed: onPressed,
        leftIcon: icon,
        type: AppButtonType.floating,
        width: size,
        height: size,
        backgroundColor: backgroundColor,
        iconColor: iconColor,
        border: border,
        isDisabled: isDisabled,
      );

  final String? text;
  final VoidCallback onPressed;
  final AppButtonType type;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final double? width;
  final double? height;
  final Widget? textWidget;
  final bool isDisabled;
  final Color? backgroundColor;
  final double? opacity;
  final Color? iconColor;
  final BorderSide? border;

  AppButton withTextWidget(Widget textWidget) =>
      copyWith(textWidget: textWidget);

  AppButton withLeftIcon(Widget icon) => copyWith(leftIcon: icon);

  AppButton withRightIcon(Widget icon) => copyWith(rightIcon: icon);

  AppButton withDisabled({bool value = true}) => copyWith(isDisabled: value);

  AppButton copyWith({
    Widget? leftIcon,
    Widget? rightIcon,
    double? width,
    double? height,
    Widget? textWidget,
    bool? isDisabled,
  }) => AppButton._(
    text: text,
    onPressed: onPressed,
    type: type,
    leftIcon: leftIcon ?? this.leftIcon,
    rightIcon: rightIcon ?? this.rightIcon,
    width: width ?? this.width,
    height: height ?? this.height,
    textWidget: textWidget ?? this.textWidget,
    isDisabled: isDisabled ?? this.isDisabled,
  );

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final typo = context.typo;
    final dimensions = context.dimensions;
    final borderRadius = BorderRadius.circular(dimensions.radiusXLarge);
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    final effectiveHeight = height ?? dimensions.buttonHeight;
    final padding = EdgeInsets.symmetric(
      horizontal: dimensions.smallW,
      vertical: 0,
    );

    final textColor = iconColor ?? _getTextColor(colors);
    final effectiveOnPressed =
        (isDisabled || (opacity != null && opacity! < 1.0)) ? null : onPressed;

    final Widget? iconStart = leftIcon;
    final Widget? iconEnd = rightIcon;

    final child = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (iconStart != null) ...[
          Transform(
            alignment: Alignment.center,
            transform: _flipForRtl(isRtl),
            child: IconTheme(
              data: IconThemeData(
                color: textColor,
                size: dimensions.iconSizeMedium,
              ),
              child: iconStart,
            ),
          ),
          SizedBox(width: dimensions.mediumW),
        ],
        textWidget ??
            Text(
              text ?? '',
              style: typo.buttonPrimary.semiBold.copyWith(color: textColor),
            ),
        if (iconEnd != null) ...[
          SizedBox(width: dimensions.smallW),
          Transform(
            alignment: Alignment.center,
            transform: _flipForRtl(isRtl),
            child: IconTheme(
              data: IconThemeData(
                color: textColor,
                size: dimensions.iconSizeMedium,
              ),
              child: iconEnd,
            ),
          ),
        ],
      ],
    );

    final buttonContent = ConstrainedBox(
      constraints: BoxConstraints(maxWidth: dimensions.buttonMaxWidth),
      child: SizedBox(
        width: double.infinity,
        height: effectiveHeight,
        child: Center(child: child),
      ),
    );

    return Opacity(
      opacity: opacity ?? (isDisabled ? 0.5 : 1.0),
      child: switch (type) {
        AppButtonType.primary => InkWell(
          onTap: effectiveOnPressed,
          borderRadius: borderRadius,
          child: Container(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: borderRadius,
            ),
            padding: padding,
            child: buttonContent,
          ),
        ),
        AppButtonType.secondary => ElevatedButton(
          onPressed: effectiveOnPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: colors.secondary,
            foregroundColor: textColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            padding: padding,
            elevation: 0,
            minimumSize: Size.fromHeight(effectiveHeight),
          ),
          child: child,
        ),
        AppButtonType.outline => OutlinedButton(
          onPressed: effectiveOnPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor ??
                colors.backgrounds.surface.maybeColor ??
                Colors.transparent,
            side: BorderSide(color: colors.border),
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            padding: padding,
            foregroundColor: textColor,
            minimumSize: Size.fromHeight(effectiveHeight),
          ),
          child: child,
        ),
        AppButtonType.text => TextButton(
          onPressed: effectiveOnPressed,
          style: TextButton.styleFrom(
            foregroundColor: textColor,
            padding: padding,
          ),
          child: child,
        ),
        AppButtonType.icon => IconButton(
          icon: iconStart!,
          onPressed: effectiveOnPressed,
          color: textColor,
        ),
        AppButtonType.underline => TextButton(
          onPressed: effectiveOnPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            text ?? '',
            style: typo.buttonMedium.copyWith(
              color: textColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        AppButtonType.circular => InkWell(
          onTap: effectiveOnPressed,
          borderRadius: BorderRadius.circular((width ?? dimensions.w(22)) / 2),
          child: Container(
            width: width ?? dimensions.w(22),
            height: height ?? dimensions.w(22),
            decoration: BoxDecoration(
              color: backgroundColor ?? colors.primary,
              shape: BoxShape.circle,
              border: border != null ? Border.fromBorderSide(border!) : null,
            ),
            child: iconStart.let(
                  (icon) => Center(child: icon), // Direct icon, no IconTheme
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
        AppButtonType.floating => SizedBox(
          width: width ?? dimensions.w(56),
          height: height ?? dimensions.w(56),
          child: FloatingActionButton(
            onPressed: effectiveOnPressed,
            backgroundColor: backgroundColor ?? Colors.white,
            elevation: 8,
            highlightElevation: 12,
            heroTag: null,
            shape: CircleBorder(
              side: border ?? BorderSide.none,
            ),
            child: iconStart.let(
              (icon) => IconTheme(
                data: IconThemeData(
                  color: textColor,
                  size: dimensions.iconSizeMedium,
                ),
                child: icon,
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
      },
    );
  }

  Matrix4 _flipForRtl(bool isRtl) =>
      isRtl ? (Matrix4.identity()..scale(-1.0, 1.0)) : Matrix4.identity();

  Color _getTextColor(theme.AppColors colors) => switch (type) {
    AppButtonType.primary ||
    AppButtonType.secondary ||
    AppButtonType.icon => colors.buttonPrimaryText,
    AppButtonType.circular => colors.buttonPrimaryText,
    AppButtonType.floating => colors.primary,
    AppButtonType.outline ||
    AppButtonType.text ||
    AppButtonType.underline => colors.textPrimary,
  };
}
