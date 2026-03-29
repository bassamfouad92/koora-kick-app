import 'package:flutter/material.dart';

extension WidgetGapDSL on Widget {
  /// Adds a vertical gap *above* the widget
  Widget gapTop(double height) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [SizedBox(height: height), this],
  );

  /// Adds a vertical gap *below* the widget
  Widget gapBottom(double height) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [this, SizedBox(height: height)],
  );

  /// Adds a horizontal gap *before* the widget
  Widget gapLeft(double width) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [SizedBox(width: width), this],
  );

  /// Adds a horizontal gap *after* the widget
  Widget gapRight(double width) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [this, SizedBox(width: width)],
  );
}

extension GapExtension on num {
  SizedBox get vGap => SizedBox(height: toDouble());
  SizedBox get hGap => SizedBox(width: toDouble());
}