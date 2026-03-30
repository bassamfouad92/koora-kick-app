import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/cupertino.dart';

class ErrorSheet extends StatelessWidget {
  const ErrorSheet._({
    required this.description,
    this.icon,
    this.title,
    this.buttonText,
    this.onButtonPressed,
  }) : super(key: null);

  /// Fluent builder entry point
  static ErrorSheetBuilder builder(String description) =>
      ErrorSheetBuilder(description);

  final String? icon;
  final String? title;
  final String description;
  final String? buttonText;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      if (icon != null)
        AppImage.asset(icon!).setDimension(width: context.dimensions.w(50), height: context.dimensions.h(50)).build()
            .withVerticalPadding(context.dimensions.mediumH),
      if (title != null)
        Text(
          title!,
          style: context.typo.headingMedium.bold,
          textAlign: TextAlign.center,
        ).withVerticalPadding(context.dimensions.mediumH),
      Text(
        description,
        style: context.typo.bodyMedium.withColor(context.colors.textSecondary),
        textAlign: TextAlign.center,
      ),
      if (buttonText != null)
        Padding(
          padding: EdgeInsets.only(
            top: context.dimensions.xLargeH,
            bottom: context.dimensions.xxLargeH,
          ),
          child: AppButton.primary(
            buttonText!,
            onPressed: onButtonPressed ?? () => Navigator.pop(context),
          ),
        )
      else
        SizedBox(height: context.dimensions.xxLargeH),
    ],
  );
}

class ErrorSheetBuilder {
  ErrorSheetBuilder(this._description);

  final String _description;
  String? _icon;
  String? _title;
  String? _buttonText;
  VoidCallback? _onButtonPressed;

  ErrorSheetBuilder setIcon(String icon) {
    _icon = icon;
    return this;
  }

  ErrorSheetBuilder setTitle(String title) {
    _title = title;
    return this;
  }

  ErrorSheetBuilder setButtonText(String text) {
    _buttonText = text;
    return this;
  }

  ErrorSheetBuilder setOnButtonPressed(VoidCallback callback) {
    _onButtonPressed = callback;
    return this;
  }

  ErrorSheet build() => ErrorSheet._(
    description: _description,
    icon: _icon,
    title: _title,
    buttonText: _buttonText,
    onButtonPressed: _onButtonPressed,
  );

  /// Convenience method to show the sheet directly
  Future<void> show(
    BuildContext context, {
    bool isEnableDrag = true,
    bool isDismissible = true,
  }) => AppBottomSheet.show(
    context: context,
    isEnableDrag: isEnableDrag,
    isDismissible: isDismissible,
    child: build(),
  );
}
