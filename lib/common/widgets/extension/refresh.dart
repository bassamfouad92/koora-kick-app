import 'package:flutter/material.dart';

extension RefreshExtension on Widget {
  Widget withRefresh(
    Future<void> Function() onRefresh, {
    Color? color,
    Color? backgroundColor,
    double strokeWidth = RefreshProgressIndicator.defaultStrokeWidth,
  }) => RefreshIndicator(
    onRefresh: onRefresh,
    color: color,
    backgroundColor: backgroundColor,
    strokeWidth: strokeWidth,
    child: this,
  );
  Widget asAlwaysScrollable() => SingleChildScrollView(
    physics: const AlwaysScrollableScrollPhysics(),
    child: this,
  );
}
