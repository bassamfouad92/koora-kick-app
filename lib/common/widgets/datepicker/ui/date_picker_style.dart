
import 'package:koora_kick/common/widgets/datepicker/ui/date_cell_style.dart';
import 'package:koora_kick/common/widgets/datepicker/ui/indicator_widget.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';

abstract interface class DatePickerStyle {
  DateCellStyle resolve(
    BuildContext context, {
    required bool isSelected,
    required bool isToday,
  });
}

class TimelineDatePickerStyle implements DatePickerStyle {
  TimelineDatePickerStyle();

  static IndicatorWidget _buildIndicator(BuildContext context, {required Color color}) => IndicatorWidget.line(
      color: color,
      thickness: context.dimensions.h(2),
      size: context.dimensions.w(12),
    );

  @override
  DateCellStyle resolve(
    BuildContext context, {
    required bool isSelected,
    required bool isToday,
  }) {
    final colors = context.colors;

    final baseIndicator = _buildIndicator(context, color: colors.textPrimary);
    final selectedIndicator = _buildIndicator(context, color: colors.textInverse);

    return switch ((isSelected, isToday)) {
      (true, _) => DateCellStyle(
          bgColor: colors.textPrimary,
          numberColor: colors.textDisabled,
          border: null,
          indicator: selectedIndicator,
        ),
      (false, true) => DateCellStyle(
          bgColor: colors.border,
          numberColor: colors.textPrimary,
          border: null,
          indicator: baseIndicator,
        ),
      _ => DateCellStyle(
          bgColor: colors.border,
          numberColor: colors.textPrimary,
          border: null,
          indicator: baseIndicator,
        ),
    };
  }
}

