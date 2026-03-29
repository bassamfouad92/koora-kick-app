
import 'package:flutter/material.dart';

extension PositionedWidgetDSL on Widget {
  /// Wraps widget in a Center
  Widget centered() => Center(child: this);

  /// Wraps widget in Align with given alignment
  Widget aligned(Alignment alignment) => Align(alignment: alignment, child: this);

  /// Wraps widget in Positioned with optional constraints
  Widget positioned({
    double? top,
    double? left,
    double? bottom,
    double? right,
    double? height,
  }) =>
      Positioned(
        top: top,
        left: left,
        bottom: bottom,
        right: right,
        height: height,
        child: this,
      );
}
