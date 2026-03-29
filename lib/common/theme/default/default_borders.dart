import 'package:flutter/material.dart';
import '../app_borders.dart';
import '../app_colors.dart';
import '../app_dimensions.dart';

class DefaultBorders extends AppBorders {

  DefaultBorders(this.colors, this.dims);
  final AppColors colors;
  final AppDimensions dims;

  @override
  InputBorder get inputEnabledBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(dims.radiusMedium),
        borderSide: BorderSide(color: colors.inputBorder),
      );

  @override
  InputBorder get inputFocusedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(dims.radiusMedium),
        borderSide: BorderSide(color: colors.inputBorderFocused, width: 2),
      );

  @override
  InputBorder get inputErrorBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(dims.radiusMedium),
        borderSide: BorderSide(color: colors.error, width: 2),
      );

  @override
  InputBorder get inputSearchBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(dims.radiusXLarge),
        borderSide: BorderSide(color: colors.border),
      );

  @override
  InputBorder get inputSearchFocusedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(dims.radiusXLarge),
        borderSide: BorderSide(color: colors.inputBorderFocused, width: 2),
      );
}
