import 'package:koora_kick/common/common.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_dotted_line_style.freezed.dart';


@freezed
abstract class AppDottedLineStyle with _$AppDottedLineStyle {
  const factory AppDottedLineStyle({
    @Default(5.0) double dotLength,
    @Default(4.0) double dotGapLength,
    @Default(1.0) double lineThickness,
    @Default(0.0) double dotRadius,
    @Default(AppColors.inputBorderDefault) Color dotColor,
  }) = _AppDottedLineStyle;
}
