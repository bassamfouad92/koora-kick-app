import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/widgets/decoration/concave_border/concave_curve_direction.dart';
import 'package:koora_kick/common/widgets/decoration/concave_border/concave_curve_geometry.dart';
import 'package:koora_kick/common/widgets/decoration/concave_border/concave_curve_path_extension.dart';
import 'package:flutter/material.dart';

class ConcaveCurveShapeBorder extends ShapeBorder {
  const ConcaveCurveShapeBorder({
    this.borderColor = AppColors.inputBorderDefault,
    this.strokeWidth = 1.0,
    this.splitRatio = 0.72,
    this.cutoutWidthRatio = 0.04,
    this.cutoutDepthRatio = 0.15,
  });

  final Color borderColor;
  final double strokeWidth;
  final double splitRatio;
  final double cutoutWidthRatio;
  final double cutoutDepthRatio;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(
    Rect rect, {
    TextDirection? textDirection,
  }) =>
      getOuterPath(rect, textDirection: textDirection);

  @override
  Path getOuterPath(
    Rect rect, {
    TextDirection? textDirection,
  }) {
    final geometry = ConcaveCurveGeometry(
      splitRatio: splitRatio,
      cutoutWidthRatio: cutoutWidthRatio,
      cutoutDepthRatio: cutoutDepthRatio,
    );
    final width = geometry.calculateWidth(rect.width);
    final depth = geometry.calculateDepth(rect.height);
    final centerX = geometry.calculateCenterX(rect.width);

    final baseShape = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          rect,
          const Radius.circular(AppPadding.p16),
        ),
      );

    final cutouts = Path()
        .addCutout(
          centerX: centerX,
          width: width,
          depth: depth,
          y: rect.top,
          direction: const ConcaveCurveDirection.down(),
        )
        .addCutout(
          centerX: centerX,
          width: width,
          depth: depth,
          y: rect.bottom,
          direction: const ConcaveCurveDirection.up(),
        );

    return Path.combine(
      PathOperation.difference,
      baseShape,
      cutouts,
    );
  }

  @override
  void paint(
      Canvas canvas,
      Rect rect, {
        TextDirection? textDirection,
      }) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawPath(getOuterPath(rect), paint);
  }

  @override
  ShapeBorder scale(double t) => ConcaveCurveShapeBorder(
    borderColor: borderColor,
    strokeWidth: strokeWidth * t,
  );
}






