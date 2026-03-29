import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koora_kick/common/widgets/datepicker/domain/date_range_window.dart';
part 'date_picker_config.freezed.dart';

typedef DateEventPredicate = bool Function(DateTime date);

@freezed
abstract class DatePickerConfig with _$DatePickerConfig {
  const factory DatePickerConfig({
    required DateTime selectedDate,
    required ValueChanged<DateTime> onDateChange,

    /// Generic marker predicate (not rides-specific)
    DateEventPredicate? eventPredicate,

    /// DDD window for date range
    @Default(DateRangeWindow.standard) DateRangeWindow range,
  }) = _DatePickerConfig;
}
