import 'package:koora_kick/common/widgets/decoration/dotted_line/app_dotted_line_style.dart';
import 'package:dotted_line/dotted_line.dart' as dotted;
import 'package:flutter/material.dart';

class AppDottedLine extends StatelessWidget {

  const AppDottedLine({
    super.key,
    this.direction = Axis.vertical,
    this.style = const AppDottedLineStyle(),
  });

  final Axis direction;
  final AppDottedLineStyle style;

  @override
  Widget build(BuildContext context) => dotted.DottedLine(
      direction: direction,
      lineLength: double.infinity,
      dashLength: style.dotLength,
      dashGapLength: style.dotGapLength,
      dashColor: style.dotColor,
      lineThickness: style.lineThickness,
      dashRadius: style.dotRadius,
    );
}
