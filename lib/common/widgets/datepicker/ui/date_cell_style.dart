import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koora_kick/common/widgets/datepicker/ui/indicator_widget.dart';

part '../date_cell_style.freezed.dart';

@freezed
abstract class DateCellStyle with _$DateCellStyle {
  const factory DateCellStyle({
    required Color bgColor,
    required Color numberColor,
    Border? border,
    required IndicatorWidget indicator,
  }) = _DateCellStyle;
}
