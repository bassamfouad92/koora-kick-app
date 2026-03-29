import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension WeekDayExtension on int {
  String toWeekShortName({required BuildContext context}) {
    final String locale = Localizations.localeOf(context).languageCode;
    final index = this % 7;

    final symbols = DateFormat.E(locale).dateSymbols;
    return symbols.SHORTWEEKDAYS[index];
  }
}

DateTime startOfWeek(DateTime d) {
  final weekday = d.weekday; // Mon=1..Sun=7
  return DateTime(d.year, d.month, d.day)
      .subtract(Duration(days: weekday - 1));
}

bool isSameDay(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;

String dowShort(int weekday) {
  switch (weekday) {
    case DateTime.monday:
      return "Mon";
    case DateTime.tuesday:
      return "Tue";
    case DateTime.wednesday:
      return "Wed";
    case DateTime.thursday:
      return "Thu";
    case DateTime.friday:
      return "Fri";
    case DateTime.saturday:
      return "Sat";
    default:
      return "Sun";
  }
}

String formatHeaderDate(DateTime d, String locale) {
  final months = [
    "Jan","Feb","Mar","Apr","May","Jun",
    "Jul","Aug","Sep","Oct","Nov","Dec"
  ];
  return "${dowShort(d.weekday)}, ${d.day} ${months[d.month - 1]}";
}

String formatTime(DateTime d) {
  int h = d.hour;
  final m = d.minute.toString().padLeft(2, '0');
  final ampm = h >= 12 ? "pm" : "am";
  h = h % 12;
  if (h == 0) h = 12;
  return "$h:$m $ampm";
}

String formatHours(Duration d) {
  final hrs = d.inMinutes / 60.0;
  if (hrs == hrs.roundToDouble()) return "${hrs.toInt()}";
  return hrs.toStringAsFixed(1);
}

String formatMmSs(Duration d) {
  final total = d.inSeconds.abs();
  final mm = (total ~/ 60).toString().padLeft(2, '0');
  final ss = (total % 60).toString().padLeft(2, '0');
  return "$mm:$ss";
}
String formatUtcToLocal(String utcString) {
  if (utcString.isEmpty) return "";
  try {
    final dateTime = DateTime.parse(utcString).toLocal();
    return DateFormat('h:mm a').format(dateTime);
  } catch (e) {
    return utcString;
  }
}

String formatHoursMins(Duration d) {
  final days = d.inDays;
  final hours = d.inHours % 24;
  final minutes = d.inMinutes % 60;

  if (days > 0) {
    return '$days days $hours hours $minutes mins';
  }
  if (hours > 0) {
    return '$hours hours $minutes mins';
  }
  return '$minutes mins';
}
extension IsoFormatting on DateTime {
  String utcStartDate() => DateTime.utc(year, month, day, 0, 0, 0).toIso8601String();
  String utcEndDate() => DateTime.utc(year, month, day, 23, 59, 59, 999).toIso8601String();
}

extension DateTimeUtcExtensions on DateTime {

  DateTime get asUtc => isUtc ? this : toUtc();

  DateTime get utcDate {
    final utc = asUtc;
    return DateTime.utc(utc.year, utc.month, utc.day);
  }


  int minutesFromNowUtc() {
    final now = DateTime.now().toUtc();
    return difference(now).inMinutes;
  }
}

extension DateTimeFormatting on DateTime {
  ///"EEE, d MMM" (e.g., "Wed, 15 Oct")
  String dateDayFormat(BuildContext context) {
    final String locale = Localizations.localeOf(context).languageCode;
    return DateFormat("E, d MMM", locale).format(this);
  }

  /// Formats time as "7:45 am" or "2:00 pm"
  String toTimeString() {
    int hour = this.hour;
    final minute = this.minute.toString().padLeft(2, '0');
    final period = hour >= 12 ? 'pm' : 'am';

    hour = hour % 12;
    if (hour == 0) hour = 12;

    return '$hour:$minute $period';
  }

  /// Formats duration as "4h 23m" or "45m"
  String toDurationString(int inMinutes) {
    final hours = inMinutes ~/ 60;
    final minutes = inMinutes % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    }
    return '${minutes}m';
  }
}

extension DurationFormatting on Duration {
  /// Formats duration from seconds as "4h 23m" or "45m"
  String toHoursMinutesString() {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    }
    return '${minutes}m';
  }
}
