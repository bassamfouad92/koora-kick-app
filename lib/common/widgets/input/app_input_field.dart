import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/theme/app_theme_extension.dart';
import 'package:koora_kick/common/widgets/input/app_input_field_style.dart';
import 'package:koora_kick/common/widgets/input/prefix_icon_builder.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/common.dart';

enum AppInputTextType { search, text, phone, itemPicker, amount }

class InputFieldActionButton {
  const InputFieldActionButton({
    required this.icon,
    required this.onTap,
    this.isVisible = true,
    this.isEnabled = true,
  });

  final Widget icon;
  final VoidCallback onTap;
  final bool isVisible;
  final bool isEnabled;
}

class AppInputField extends StatefulWidget {
  factory AppInputField.text({
    required TextEditingController controller,
    required String hintText,
    required String labelText,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
  }) => AppInputField._(
    type: AppInputTextType.text,
    controller: controller,
    hintText: hintText,
    labelText: labelText,
    keyboardType: keyboardType,
    obscureText: obscureText,
  );

  factory AppInputField.search({
    required TextEditingController controller,
    required String hintText,
    String? labelText,
    InputFieldActionButton? actionButton,
  }) => AppInputField._(
    type: AppInputTextType.search,
    controller: controller,
    hintText: hintText,
    labelText: labelText,
    actionButton: actionButton,
  );

  factory AppInputField.phone({
    required TextEditingController controller,
    required CountryModel country,
    String hintText = "50 123 4567",
    String labelText = "global_phoneNumber",
  }) => AppInputField._(
    type: AppInputTextType.phone,
    controller: controller,
    countryModel: country,
    hintText: hintText,
    labelText: labelText.localized(),
  );

  factory AppInputField.itemPicker({
    required String hintText,
    required String labelText,
    String? itemPickerSelectedValue,
  }) => AppInputField._(
    type: AppInputTextType.itemPicker,
    hintText: hintText,
    labelText: labelText,
    itemPickerSelectedValue: itemPickerSelectedValue,
  );

  factory AppInputField.amount({
    required TextEditingController controller,
    String hintText = "global_enterAmount",
    String? labelText,
    InputFieldActionButton? actionButton,
  }) => AppInputField._(
    type: AppInputTextType.amount,
    controller: controller,
    hintText: hintText.localized(),
    labelText: labelText,
    actionButton: actionButton,
    inputFieldStyle: const AppInputFieldStyle(
      borderType: AppInputBorderType.none,
      backgroundColor: Colors.transparent,
    ),
  );

  const AppInputField._({
    required this.type,
    required this.hintText,
    required this.labelText,
    this.controller,
    this.inputFieldStyle,
    this.focusNode,
    this.onChanged,
    this.onClear,
    this.hasError = false,
    this.errorText,
    this.countryModel,
    this.onTap,
    this.itemPickerSelectedValue,
    this.actionButton,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  AppInputField withInputFieldStyle(AppInputFieldStyle? style) =>
      copyWith(inputFieldStyle: style);

  AppInputField withFocus(FocusNode? focus) => copyWith(focusNode: focus);

  AppInputField withOnChanged(ValueChanged<String>? callback) =>
      copyWith(onChanged: callback);

  AppInputField withOnClear(VoidCallback? clear) => copyWith(onClear: clear);

  AppInputField withError(String? error) =>
      copyWith(errorText: error, hasError: error != null);

  AppInputField withFieldError(AppError? error, String field) {
    final errorMessage = error?.fieldError(field);
    return withError(errorMessage);
  }

  AppInputField withOnTap(VoidCallback? onTap) => copyWith(onTap: onTap);

  AppInputField withKeyboardType(TextInputType type) =>
      copyWith(keyboardType: type);

  AppInputField copyWith({
    AppInputTextType? type,
    TextEditingController? controller,
    String? hintText,
    String? labelText,
    AppInputFieldStyle? inputFieldStyle,
    FocusNode? focusNode,
    ValueChanged<String>? onChanged,
    VoidCallback? onClear,
    bool? hasError,
    String? errorText,
    CountryModel? countryModel,
    VoidCallback? onTap,
    String? itemPickerSelectedValue,
    InputFieldActionButton? actionButton,
    TextInputType? keyboardType,
    bool? obscureText,
  }) => AppInputField._(
    type: type ?? this.type,
    controller: controller ?? this.controller,
    hintText: hintText ?? this.hintText,
    labelText: labelText ?? this.labelText,
    inputFieldStyle: inputFieldStyle ?? this.inputFieldStyle,
    focusNode: focusNode ?? this.focusNode,
    onChanged: onChanged ?? this.onChanged,
    onClear: onClear ?? this.onClear,
    hasError: hasError ?? this.hasError,
    errorText: errorText ?? this.errorText,
    countryModel: countryModel ?? this.countryModel,
    onTap: onTap ?? this.onTap,
    itemPickerSelectedValue:
        itemPickerSelectedValue ?? this.itemPickerSelectedValue,
    actionButton: actionButton ?? this.actionButton,
    keyboardType: keyboardType ?? this.keyboardType,
    obscureText: obscureText ?? this.obscureText,
  );

  final AppInputTextType type;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final AppInputFieldStyle? inputFieldStyle;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final bool hasError;
  final String? errorText;
  final CountryModel? countryModel;
  final VoidCallback? onTap;
  final String? itemPickerSelectedValue;
  final InputFieldActionButton? actionButton;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  @override
  void didUpdateWidget(covariant AppInputField oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Only update if we're using internal controller and the value changed
    if (_useInternalController &&
        widget.itemPickerSelectedValue != oldWidget.itemPickerSelectedValue &&
        widget.itemPickerSelectedValue != _internalController.text) {
      _internalController.text = widget.itemPickerSelectedValue ?? '';
    }
  }

  late final TextEditingController _internalController;

  bool get _useInternalController =>
      widget.type == AppInputTextType.itemPicker && widget.controller == null;

  TextEditingController get _controller =>
      widget.controller ?? _internalController;

  void _onSearchChanged(String val) {
    widget.onChanged?.call(val);
    val.isEmpty.trueOrNull(widget.onClear)?.call();
  }

  @override
  void initState() {
    super.initState();
    if (_useInternalController) {
      _internalController = TextEditingController(
        text: widget.itemPickerSelectedValue ?? '',
      );
    }
  }

  @override
  void dispose() {
    if (_useInternalController) {
      _internalController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case AppInputTextType.text:
        return _buildTextField();
      case AppInputTextType.search:
        return _buildSearchField();
      case AppInputTextType.phone:
        return _buildPhoneField();
      case AppInputTextType.itemPicker:
        return _buildItemPickerField();
      case AppInputTextType.amount:
        return _buildAmountField();
    }
  }

  Widget _buildTextField() {
    final colors = context.colors;
    final style =
        widget.inputFieldStyle ?? AppInputFieldStyle.fromTheme(context);

    return _buildLabeledField(
      TextField(
        controller: _controller,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        readOnly: widget.onTap != null,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        style: style.textStyle,
        cursorColor: colors.textPrimary,
        decoration: InputDecoration(
          hintStyle: style.hintStyle,
          hintText: widget.hintText,
          contentPadding: style.padding,
          filled: style.backgroundColor != null,
          fillColor: style.backgroundColor,
          border: style.buildBorder(theme: context.appTheme),
          enabledBorder: style.buildBorder(
            theme: context.appTheme,
            hasError: widget.hasError,
          ),
          focusedBorder: style.buildBorder(
            theme: context.appTheme,
            hasError: widget.hasError,
            isFocused: true,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    final colors = context.colors;
    final dimensions = context.dimensions;
    final isFocused = widget.focusNode?.hasFocus ?? false;
    final style =
        (widget.inputFieldStyle ?? AppInputFieldStyle.fromTheme(context))
            .copyWith(
              padding: EdgeInsets.all(dimensions.small),
              backgroundColor: isFocused ? colors.textInverse : null,
            );

    return TextField(
      controller: _controller,
      focusNode: widget.focusNode,
      onChanged: _onSearchChanged,
      onTap: widget.onTap,
      readOnly: widget.onTap != null,
      style: style.textStyle,
      cursorColor: colors.textPrimary,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: style.hintStyle,
        prefixIcon: style.prefixIcon ?? _searchIcon,
        suffixIcon: _effectiveSuffixIcon,
        contentPadding: style.padding,
        filled: true,
        fillColor: style.backgroundColor ?? colors.textInverse,
        enabledBorder: context.borders.inputSearchBorder,
        focusedBorder: context.borders.inputSearchFocusedBorder,
      ),
    );
  }

  Widget _buildPhoneField() {
    final colors = context.colors;
    final typo = context.typo;
    final dimensions = context.dimensions;
    final style =
        widget.inputFieldStyle ?? AppInputFieldStyle.fromTheme(context);
    return _buildLabeledField(
      TextField(
        controller: _controller,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        keyboardType: TextInputType.phone,
        style: style.textStyle,
        cursorColor: colors.textPrimary,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: style.hintStyle,
          prefixIcon:
              PrefixIconBuilder(
                colors: colors,
                dimensions: dimensions,
                typo: typo,
                iconPath: widget.countryModel!.flag,
                imageType: widget.countryModel!.imageType,
                text: widget.countryModel!.displayCode,
                textStyle: style.textStyle!,
              ).withIcon().text().withChevronIcon().withDivider().withOnTap(() {
                widget.onTap?.call();
              }).build(),
          contentPadding: style.padding,
          enabledBorder: style.buildBorder(
            theme: context.appTheme,
            hasError: widget.hasError,
          ),
          focusedBorder: style.buildBorder(
            theme: context.appTheme,
            hasError: widget.hasError,
            isFocused: true,
          ),
        ),
      ),
    );
  }

  Widget _buildItemPickerField() {
    final style =
        widget.inputFieldStyle ?? AppInputFieldStyle.fromTheme(context);
    return _buildLabeledField(
      GestureDetector(
        onTap: widget.onTap,
        behavior: HitTestBehavior.opaque,
        child: AbsorbPointer(
          child: TextField(
            controller: _controller,
            enabled: false,
            style: style.textStyle,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: style.hintStyle,
              suffixIcon: _dropDownIcon,
              contentPadding: style.padding,
              filled: style.backgroundColor != null,
              fillColor: style.backgroundColor,
              disabledBorder: style.buildBorder(
                theme: context.appTheme,
                hasError: widget.hasError,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabeledField(Widget child) {
    final style =
        widget.inputFieldStyle ?? AppInputFieldStyle.fromTheme(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelText.let(
          (text) => Padding(
            padding: EdgeInsets.only(bottom: context.dimensions.xSmallH),
            child: Text(text, style: style.labelStyle),
          ),
          orElse: () => const SizedBox.shrink(),
        ),
        child,
        if (widget.hasError) ...[
          Padding(
            padding: EdgeInsets.only(
              top: context.dimensions.xSmallH,
              left: context.dimensions.xSmallW,
            ),
            child: Text(
              widget.errorText ?? '',
              style: context.typo.errorMessage,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildAmountField() {
    final colors = context.colors;
    final baseStyle =
        widget.inputFieldStyle ?? AppInputFieldStyle.fromTheme(context);

    final style = baseStyle.copyWith(
      borderType: AppInputBorderType.none,
      prefixIcon: baseStyle.prefixIcon,
    );

    return TextField(
      controller: _controller,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      readOnly: widget.onTap != null,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      style: style.textStyle,
      cursorColor: colors.textPrimary,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: style.hintStyle,
        prefixIcon: _effectivePrefixIcon,
        prefixIconConstraints: const BoxConstraints(
          //override the default minimum 48x48 size
          minWidth: 0,
          minHeight: 0,
        ),
        suffixIcon: _effectiveSuffixIcon,
        suffixIconConstraints: const BoxConstraints(
          //override the default minimum 48x48 size
          minWidth: 0,
          minHeight: 0,
        ),
        contentPadding: style.padding,
        filled: true,
        fillColor: style.backgroundColor ?? Colors.transparent,
        border: style.buildBorder(theme: context.appTheme),
        enabledBorder: style.buildBorder(
          theme: context.appTheme,
          hasError: widget.hasError,
        ),
        focusedBorder: style.buildBorder(
          theme: context.appTheme,
          hasError: widget.hasError,
          isFocused: true,
        ),
      ),
    );
  }

  Widget? get _effectiveSuffixIcon => widget.actionButton?.let((btn) {
    if (!btn.isVisible) return null;
    Widget iconWidget;
    //If it's already a button (AppButton or IconButton),
    // use it directly - preserves its size, styling, and onPressed and prevent default properties
    if (btn.icon is AppButton || btn.icon is IconButton) {
      iconWidget = btn.icon;
    } else {
      iconWidget = IconButton(
        icon: btn.icon,
        onPressed: btn.isEnabled ? btn.onTap : null,
      );
    }
    //to give padding when placed at the end of the widget
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: context.dimensions.small,
        end: context.dimensions.medium,
      ),
      child: iconWidget,
    );
  }, orElse: () => _controller.text.isNotEmpty.trueOrNull(_clearButton));

  Widget? get _effectivePrefixIcon => widget.inputFieldStyle?.prefixIcon.let(
    (prefixIcon) => Padding(
      padding: EdgeInsetsDirectional.only(
        start: context.dimensions.medium,
        end: context.dimensions.small,
      ),
      child: prefixIcon,
    ),
    orElse: () => null,
  );

  Widget get _clearButton => IconButton(
    icon: const AppImage(source: AppAssets.icClearCross, type: ImageType.asset),
    onPressed: () {
      if (!mounted) {
        return;
      }
      _controller.clear();
      widget.onClear?.call();
    },
  );

  Widget get _searchIcon => const IconButton(
    icon: AppImage(source: AppAssets.icSearch, type: ImageType.asset),
    onPressed: null,
  );

  Widget get _dropDownIcon => const IconButton(
    icon: AppImage(source: AppAssets.chevronDown, type: ImageType.asset),
    onPressed: null,
  );
}
