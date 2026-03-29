import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'concave_curve_geometry.freezed.dart';

@freezed
abstract class ConcaveCurveGeometry with _$ConcaveCurveGeometry {
  const ConcaveCurveGeometry._();

  const factory ConcaveCurveGeometry({
    @Default(0.04) double cutoutWidthRatio,
    @Default(0.15) double cutoutDepthRatio,
    @Default(0.72) double splitRatio,
  }) = _ConcaveCurveGeometry;

  double calculateWidth(double totalWidth) => totalWidth * cutoutWidthRatio;
  double calculateDepth(double totalHeight) => totalHeight * cutoutDepthRatio;
  double calculateCenterX(double totalWidth) => totalWidth * splitRatio;
}