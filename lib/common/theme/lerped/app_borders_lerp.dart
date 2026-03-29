import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_borders.dart';

class AppBordersLerp implements AppBorders {
  const AppBordersLerp({
    required this.inputEnabledBorder,
    required this.inputFocusedBorder,
    required this.inputErrorBorder,
    required this.inputSearchBorder,
    required this.inputSearchFocusedBorder,
  });

  @override final InputBorder inputEnabledBorder;
  @override final InputBorder inputFocusedBorder;
  @override final InputBorder inputErrorBorder;
  @override final InputBorder inputSearchBorder;
  @override final InputBorder inputSearchFocusedBorder;

  static AppBorders lerp(
      AppBorders a,
      AppBorders b,
      double t,
      ) => AppBordersLerp(
      inputEnabledBorder: ShapeBorder.lerp(
        a.inputEnabledBorder,
        b.inputEnabledBorder,
        t,
      ) as InputBorder,
      inputFocusedBorder: ShapeBorder.lerp(
        a.inputFocusedBorder,
        b.inputFocusedBorder,
        t,
      ) as InputBorder,
      inputErrorBorder: ShapeBorder.lerp(
        a.inputErrorBorder,
        b.inputErrorBorder,
        t,
      ) as InputBorder,
      inputSearchBorder: ShapeBorder.lerp(
        a.inputSearchBorder,
        b.inputSearchBorder,
        t,
      ) as InputBorder,
      inputSearchFocusedBorder: ShapeBorder.lerp(
        a.inputSearchFocusedBorder,
        b.inputSearchFocusedBorder,
        t,
      ) as InputBorder,
    );
}
