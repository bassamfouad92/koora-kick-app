import 'package:flutter/widgets.dart';

extension BuildContextScreenSizeX on BuildContext {
  /// Full screen width
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Full screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Shortest side (useful for responsiveness)
  double get shortestSide => MediaQuery.of(this).size.shortestSide;

  /// Longest side
  double get longestSide => MediaQuery.of(this).size.longestSide;

  /// Orientation
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Check if screen is considered small (e.g., mobile)
  bool get isSmallScreen => screenWidth < 600;
}
