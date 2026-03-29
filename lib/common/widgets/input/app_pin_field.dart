import 'dart:async';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/theme/app_colors.dart' as theme;
import 'package:koora_kick/common/theme/app_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

enum PinFieldStyle { otp, pin }

typedef StringCallback = void Function(String);

class PinField extends StatefulWidget {
  const PinField._({
    required this.type,
    this.controller,
    this.fieldWidth,
    this.fieldHeight,
    this.isObscure = false,
    this.codeLength = 6,
    this.autoFocus = false,
    this.borderRadius = 12,
    this.borderWidth = 2,
    this.hasError = false,
    this.errorText,
    this.label,
    this.showCursor = true,
    this.textInputAction,
    this.onCompleted,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.readOnly,
    this.focusNode,
    this.errorAnimationController,
  });

  // Builder factories stay the same
  factory PinField.otp({TextEditingController? controller}) =>
      PinField._(controller: controller, type: PinFieldStyle.otp);

  factory PinField.pin({TextEditingController? controller}) =>
      PinField._(controller: controller, type: PinFieldStyle.pin)
          .withObscure(true)
          .withCodeLength(4)
          .withFieldSize(12, 12)
          .withBorderRadius(6)
          .withBorderWidth(0)
          .withCursor(false)
          .withReadOnly(true);

  final TextEditingController? controller;
  final PinFieldStyle type;
  final bool isObscure;
  final int codeLength;
  final bool autoFocus;
  final double? fieldHeight;
  final double? fieldWidth;
  final double borderRadius;
  final double borderWidth;
  final bool hasError;
  final String? errorText;
  final String? label;
  final bool showCursor;
  final TextInputAction? textInputAction;
  final StringCallback? onCompleted;
  final StringCallback? onChanged;
  final StringCallback? onSubmitted;
  final VoidCallback? onTap;
  final bool? readOnly;
  final FocusNode? focusNode;
  final StreamController<ErrorAnimationType>? errorAnimationController;

  PinField withReadOnly(bool readOnly) => copyWith(readOnly: readOnly);

  PinField withFocusNode(FocusNode? node) => copyWith(focusNode: node);

  PinField withOnTap(VoidCallback? onTap) => copyWith(onTap: onTap);

  PinField withObscure(bool obscure) => copyWith(isObscure: obscure);

  PinField withAutoFocus(bool value) => copyWith(autoFocus: value);

  PinField withLabel(String? label) => copyWith(label: label);

  PinField withHasError(String? error, bool state) =>
      copyWith(errorText: error, hasError: state);

  PinField withError(String? error) =>
      copyWith(errorText: error, hasError: error != null);

  PinField withFieldError(AppError? error, String field) {
    final errorMessage = error?.fieldError(field);
    return withError(errorMessage);
  }

  PinField withCursor(bool show) => copyWith(showCursor: show);

  PinField withTextInputAction(TextInputAction action) =>
      copyWith(textInputAction: action);

  PinField withOnCompleted(StringCallback? callback) =>
      copyWith(onCompleted: callback);

  PinField withOnChanged(StringCallback? callback) =>
      copyWith(onChanged: callback);

  PinField withOnSubmitted(StringCallback? callback) =>
      copyWith(onSubmitted: callback);

  PinField withErrorAnimationController(
    StreamController<ErrorAnimationType>? controller,
  ) => copyWith(errorAnimationController: controller);

  PinField withCodeLength(int length) => copyWith(codeLength: length);

  PinField withFieldSize(double height, double width) =>
      copyWith(fieldHeight: height, fieldWidth: width);

  PinField withBorderRadius(double radius) => copyWith(borderRadius: radius);

  PinField withBorderWidth(double width) => copyWith(borderWidth: width);

  PinField copyWith({
    bool? isObscure,
    int? codeLength,
    bool? autoFocus,
    double? fieldHeight,
    double? fieldWidth,
    double? borderRadius,
    double? borderWidth,
    bool? hasError,
    String? errorText,
    String? label,
    bool? showCursor,
    TextInputAction? textInputAction,
    StringCallback? onCompleted,
    StringCallback? onChanged,
    StringCallback? onSubmitted,
    VoidCallback? onTap,
    bool? readOnly,
    FocusNode? focusNode,
    StreamController<ErrorAnimationType>? errorAnimationController,
  }) => PinField._(
    controller: controller,
    type: type,
    isObscure: isObscure ?? this.isObscure,
    codeLength: codeLength ?? this.codeLength,
    autoFocus: autoFocus ?? this.autoFocus,
    fieldWidth: fieldWidth ?? this.fieldWidth,
    fieldHeight: fieldHeight ?? this.fieldHeight,
    borderRadius: borderRadius ?? this.borderRadius,
    borderWidth: borderWidth ?? this.borderWidth,
    hasError: hasError ?? this.hasError,
    errorText: errorText ?? this.errorText,
    label: label ?? this.label,
    showCursor: showCursor ?? this.showCursor,
    textInputAction: textInputAction ?? this.textInputAction,
    onCompleted: onCompleted ?? this.onCompleted,
    onChanged: onChanged ?? this.onChanged,
    onSubmitted: onSubmitted ?? this.onSubmitted,
    onTap: onTap ?? this.onTap,
    readOnly: readOnly ?? this.readOnly,
    focusNode: focusNode ?? this.focusNode,
    errorAnimationController:
        errorAnimationController ?? this.errorAnimationController,
  );

  @override
  State<PinField> createState() => _PinFieldState();
}

class _PinFieldState extends State<PinField> {
  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final typo = context.typo;
    final dimensions = context.dimensions;

    final pinTheme = switch (widget.type) {
      PinFieldStyle.otp => PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        fieldHeight: widget.fieldHeight ?? context.dimensions.h(56),
        fieldWidth: widget.fieldWidth ?? context.dimensions.h(72),
        fieldOuterPadding: EdgeInsets.all(context.dimensions.h(2)),
        borderWidth: widget.borderWidth,
        activeColor: widget.hasError ? colors.error : colors.border,
        inactiveColor: widget.hasError ? colors.error : colors.border,
        selectedColor: widget.hasError
            ? colors.error
            : colors.inputBorderFocused,
        activeFillColor: widget.hasError ? colors.textInverse : colors.divider,
        inactiveFillColor: widget.hasError
            ? colors.textInverse
            : colors.divider,
        selectedFillColor: colors.textInverse,
        disabledColor: colors.textInverse,
      ),
      PinFieldStyle.pin => PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(dimensions.radiusMedium),
        fieldHeight: widget.fieldHeight,
        fieldWidth: widget.fieldWidth,
        borderWidth: 0,
        activeColor: Colors.transparent,
        inactiveColor: Colors.transparent,
        selectedColor: Colors.transparent,
        activeFillColor: colors.textPrimary,
        inactiveFillColor: colors.textDisabled,
        selectedFillColor: colors.textDisabled,
        disabledColor: Colors.transparent,
        fieldOuterPadding: EdgeInsets.zero,
      ),
    };

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label.isPresent)
          Padding(
            padding: EdgeInsets.only(bottom: dimensions.xSmallH),
            child: Text(widget.label!, style: typo.bodySmall),
          ),
        PinCodeTextField(
          appContext: context,
          controller: widget.controller,
          errorAnimationController: widget.errorAnimationController,
          length: widget.codeLength,
          autoFocus: widget.autoFocus,
          showCursor: widget.showCursor,
          textInputAction: widget.textInputAction ?? TextInputAction.done,
          keyboardType: TextInputType.number,
          animationType: AnimationType.fade,
          animationDuration: const Duration(milliseconds: 300),
          cursorColor: colors.textPrimary,
          obscureText: widget.isObscure,
          obscuringWidget: obscureDotWidget(widget.isObscure, colors),
          enableActiveFill: true,
          backgroundColor: Colors.transparent,
          pinTheme: pinTheme,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          onCompleted: widget.onCompleted,
          onChanged: widget.onChanged,
          onSubmitted: widget.onSubmitted,
          onTap: widget.onTap,
          readOnly: widget.readOnly ?? (widget.type == PinFieldStyle.pin),
          focusNode:
              widget.focusNode ??
              (widget.type == PinFieldStyle.pin ? FocusNode() : null),
          errorTextMargin: EdgeInsets.zero,
          errorTextSpace: 2,
        ).withHorizontalPadding(widget.type == PinFieldStyle.pin ? 72 : 0),
        widget.errorText.let(
          (errorMessage) => Padding(
            padding: EdgeInsets.only(top: context.dimensions.xSmallW),
            child: Center(
              child: Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: context.typo.errorMessage,
              ),
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget? obscureDotWidget(bool isObscure, theme.AppColors colors) => isObscure
      ? Container(
          height: widget.fieldHeight ?? 56 / 4,
          width: widget.fieldWidth ?? 72 / 4,
          decoration: BoxDecoration(
            color: colors.textPrimary,
            shape: BoxShape.circle,
          ),
        )
      : null;
}
