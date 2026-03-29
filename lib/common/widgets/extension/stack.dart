import 'package:flutter/material.dart';

extension StackDSL on List<Widget> {
  Widget stacked({
    Alignment alignment = Alignment.topLeft,
    Clip clipBehavior = Clip.hardEdge,
    StackFit fit = StackFit.loose,
  }) => Stack(
      alignment: alignment,
      clipBehavior: clipBehavior,
      fit: fit,
      children: this,
    );
}
