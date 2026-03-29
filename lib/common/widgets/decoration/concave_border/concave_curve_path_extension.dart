import 'dart:ui';

import 'package:koora_kick/common/widgets/decoration/concave_border/concave_curve_direction.dart';

extension ConcaveCurvePathExtension on Path {
  Path addCutout({
    required double centerX,
    required double width,
    required double depth,
    required double y,
    required ConcaveCurveDirection direction,
  }) {
    final controlY = direction.when(
      up: () => y - depth,
      down: () => y + depth,
    );

    this
      ..moveTo(centerX - width, y)
      ..quadraticBezierTo(
        centerX,
        controlY,
        centerX + width,
        y,
      )
      ..close();

    return this;
  }
}