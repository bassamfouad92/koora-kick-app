import 'package:koora_kick/common/widgets/datepicker/date_picker_manager.dart';
import 'package:koora_kick/common/widgets/datepicker/ui/date_picker_style.dart';
import 'package:koora_kick/common/widgets/datepicker/domain/date_range_window.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';

class TimelinePickerImpl implements DatePickerManager {
  const TimelinePickerImpl();


  static final DatePickerStyle _style = TimelineDatePickerStyle();

  @override
  DatePickerStyle get style => _style;

  @override
  Widget buildPickerWidget({
    required DateTime focusDate,
    required ValueChanged<DateTime> onDateChange,
    required DateItemBuilder itemBuilder,
    DateRangeWindow range = DateRangeWindow.standard,
  }) => Builder(
      builder: (context) {
        final (firstDate, lastDate) = range.toRange(anchor: DateTime.now().toUtc());

        return EasyInfiniteDateTimeLine(
          focusDate: focusDate,
          firstDate: firstDate,
          lastDate: lastDate,
          onDateChange: onDateChange,
          headerBuilder: (context, date) => const SizedBox.shrink(),
          dayProps: const EasyDayProps(
            width: 40.0,
            height: 70.0,
          ),
          timeLineProps: const EasyTimeLineProps(
            separatorPadding: 16.0,
          ),
          selectionMode: const SelectionMode.autoCenter(),
          itemBuilder: itemBuilder,
        );
      },
    );
}
