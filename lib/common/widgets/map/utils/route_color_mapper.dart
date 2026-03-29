import 'package:koora_kick/common/theme/app_theme_extension.dart';
import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:flutter/material.dart';

class RouteColorMapper {
  static Color toUiColor(BuildContext context, RouteColor color) {
    switch (color) {
      case RouteColor.neutral:
        return context.colors.route;
      case RouteColor.primary:
        return context.colors.navigation;
      case RouteColor.secondary:
        return context.colors.secondary;
    }
  }
}