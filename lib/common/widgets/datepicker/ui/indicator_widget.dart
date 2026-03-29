import 'package:koora_kick/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

enum IndicatorType { line, circle }

class IndicatorWidget extends StatelessWidget {

  factory IndicatorWidget.line({
    Color color = AppColors.dateIndicatorUnSelectedColor,
    double thickness = 1,
    double size = 15,
  }) => IndicatorWidget._(
      type: IndicatorType.line,
      color: color,
      size: size,
      thickness: thickness,
    );

  const IndicatorWidget._({
    required this.type,
    required this.color,
    required this.size,
    required this.thickness,
    super.key,
  });

  factory IndicatorWidget.circle({
    Color color = Colors.blue,
    double size = 8,
  }) => IndicatorWidget._(
      type: IndicatorType.circle,
      color: color,
      size: size,
      thickness: size,
    );
  final IndicatorType type;
  final Color color;
  final double size;
  final double thickness;

  IndicatorWidget copyWith({
    IndicatorType? type,
    Color? color,
    double? size,
    double? thickness,
  }) => IndicatorWidget._(
      type: type ?? this.type,
      color: color ?? this.color,
      size: size ?? this.size,
      thickness: thickness ?? this.thickness,
    );

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case IndicatorType.circle:
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        );

      case IndicatorType.line:
        return Container(
          width: size,
          height: thickness,
          color: color,
        );
    }
  }
}
