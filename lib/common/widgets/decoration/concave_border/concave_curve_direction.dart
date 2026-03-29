import 'package:freezed_annotation/freezed_annotation.dart';

part 'concave_curve_direction.freezed.dart';

@freezed
sealed class ConcaveCurveDirection with _$ConcaveCurveDirection {
  const factory ConcaveCurveDirection.up() = _Up;
  const factory ConcaveCurveDirection.down() = _Down;
}
