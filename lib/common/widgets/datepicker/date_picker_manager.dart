import 'package:koora_kick/common/widgets/datepicker/ui/date_picker_style.dart';
import 'package:koora_kick/common/widgets/datepicker/domain/date_range_window.dart';
import 'package:flutter/material.dart';

typedef DateItemBuilder = Widget Function(
BuildContext context,
    DateTime date,
    bool isSelected,
    VoidCallback onTap,
    );

abstract class DatePickerManager {
  DatePickerStyle get style;
  Widget buildPickerWidget({
    required DateTime focusDate,
    DateRangeWindow range = DateRangeWindow.standard,
    required ValueChanged<DateTime> onDateChange,
    required DateItemBuilder itemBuilder,
  });
}
