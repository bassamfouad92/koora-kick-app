import 'package:flutter/widgets.dart';

extension WidgetFlipExtension on Widget {
  /// Flips the widget horizontally if [isRTL] is true.
  Widget flipIfRTL(bool isRTL) {
    if (!isRTL) return this;
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..scale(-1.0, 1.0),
      child: this,
    );
  }
}