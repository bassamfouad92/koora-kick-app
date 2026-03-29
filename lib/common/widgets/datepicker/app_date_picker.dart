import 'package:koora_kick/common/widgets/datepicker/ui/date_cell.dart';

import 'package:koora_kick/common/widgets/datepicker/date_picker_config.dart';
import 'package:koora_kick/common/widgets/datepicker/date_picker_manager.dart';
import 'package:koora_kick/common/widgets/datepicker/date_picker_type.dart';
import 'package:koora_kick/common/widgets/datepicker/implementation/timeline_date_picker_impl.dart';
import 'package:koora_kick/utils/date_utils.dart';
import 'package:flutter/material.dart';

class AppDatePicker extends StatelessWidget {
  const AppDatePicker._({
    super.key,
    required DatePickerType type,
    required DatePickerConfig config,
  })  : _type = type,
        _config = config;

  factory AppDatePicker.timeline({
    Key? key,
    required DatePickerConfig config,
  }) =>
      AppDatePicker._(
        key: key,
        type: DatePickerType.timeline,
        config: config,
      );

  final DatePickerType _type;
  final DatePickerConfig _config;

  DatePickerManager _resolveManager() => switch (_type) {
    DatePickerType.timeline => const TimelinePickerImpl(),

  };

  @override
  Widget build(BuildContext context) {
    final manager = _resolveManager();

    return manager.buildPickerWidget(
      focusDate: _config.selectedDate,
      range: _config.range,
      onDateChange: (selectedDate) => _config.onDateChange(
        DateTime.utc(selectedDate.year, selectedDate.month, selectedDate.day),
      ),
      itemBuilder: (ctx, date, isSelected, onTap) =>
          _buildDayItem(ctx, manager, date, isSelected, onTap),
    );
  }

  Widget _buildDayItem(
      BuildContext context,
      DatePickerManager manager,
      DateTime date,
      bool isSelected,
      VoidCallback onTap,
      ) {
    final isToday = isSameDay(date, DateTime.now());
    final normalized = DateTime(date.year, date.month, date.day);
    final hasEvent = _config.eventPredicate?.call(normalized) ?? false;

    return DateCell(
      date: date,
      hasEvent: hasEvent,
      isSelected: isSelected,
      isToday: isToday,
      onTap: onTap,
    );
  }
}