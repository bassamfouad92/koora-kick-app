import 'package:flutter/material.dart';

extension WidgetTapExtensions on Widget {
  /// Makes any widget tappable with ripple effect
  Widget onTap(VoidCallback onTap, {BorderRadius? borderRadius}) => InkWell(
        onTap: onTap,
        child: this,
    );
}
