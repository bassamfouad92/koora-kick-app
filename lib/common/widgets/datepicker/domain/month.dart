import 'package:flutter/foundation.dart';

@immutable
class Month {
  final int value;
  const Month._(this.value) : assert(value >= 0);

  factory Month.past(int value) => Month._(value);
  factory Month.future(int value) => Month._(value);

  static const Month past1 = Month._(1);
  static const Month future1 = Month._(1);


  DateTime shift(DateTime date, {required bool isPast}) {
    final delta = isPast ? -value : value;
    return date.isUtc
        ? DateTime.utc(date.year, date.month + delta, date.day)
        : DateTime(date.year, date.month + delta, date.day);
  }

}
