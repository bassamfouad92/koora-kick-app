import 'package:flutter/material.dart';

extension WidgetPaddingExtension on Widget {
  /// Adds symmetric horizontal and vertical padding
  Widget withSymmetricPadding({double horizontal = 0, double vertical = 0}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );

  /// Adds only horizontal padding
  Widget withHorizontalPadding(double value) => Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );

  /// Adds only vertical padding
  Widget withVerticalPadding(double value) => Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );

  /// Adds padding from all sides
  Widget withAllPadding(double value) => Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );

  /// Adds custom EdgeInsets padding
  Widget withPadding(EdgeInsets padding) => Padding(
      padding: padding,
      child: this,
    );
}

extension PrefixIconNoPaddingExtension on Widget {
  Widget withNoPadding() => Builder(
      builder: (context) => MediaQuery(
        data: MediaQuery.of(context).copyWith(padding: EdgeInsets.zero),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 0, minWidth: 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: this,
          ),
        ),
      ),
    );
}

