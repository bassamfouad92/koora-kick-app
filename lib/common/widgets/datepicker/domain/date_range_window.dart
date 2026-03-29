import 'package:koora_kick/common/widgets/datepicker/domain/month.dart';
import 'package:flutter/foundation.dart';

@immutable
class DateRangeWindow {

  const DateRangeWindow({
    required this.past,
    required this.future,
  });

  static const DateRangeWindow standard = DateRangeWindow(
    past: Month.past1,
    future: Month.future1,
  );
  final Month past;
  final Month future;

  (DateTime, DateTime) toRange({DateTime? anchor}) {
    final now = anchor ?? DateTime.now();
    final start = past.shift(now, isPast: true);
    final end = future.shift(now, isPast: false);
    return (start, end);
  }
}
