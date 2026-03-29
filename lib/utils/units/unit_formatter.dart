import 'package:koora_kick/common/extensions/localization.dart';

import 'unit_data.dart';
import 'unit_types.dart';

enum DistanceFormatStyle {
  lowerBound,
  rounded,
}

enum TimeFormatStyle {
  digital24h,
  digital12h,
  approximate,
  digitalDuration,
  longDuration,
  shortDuration;

  static TimeFormatStyle fromString(String value) {
    if (value == '24h') return TimeFormatStyle.digital24h;
    return TimeFormatStyle.digital12h;
  }
}

abstract interface class UnitFormatter {
  String format(UnitData data);
}

class SimpleDistanceFormatter implements UnitFormatter {
  @override
  String format(UnitData data) {
    if (data.category != UnitCategory.length) return data.value.toString();

    final value = data.value;
    if (value == 0) {
      return '0 ${data.type.symbol}';
    }

    if (data.type == UnitType.kilometers || data.type == UnitType.miles) {
      return '${value.toStringAsFixed(1)}+';
    }
    return '${value.toInt()}+';
  }
}

class SmartTimeFormatter implements UnitFormatter {
  @override
  String format(UnitData data) {
    if (data.category != UnitCategory.time) return data.value.toString();

    final seconds = (data.value * data.type.baseFactor).toInt();
    final absSeconds = seconds.abs();

    final hours = absSeconds ~/ 3600;
    
    final sign = seconds < 0 ? '-' : '';

    if (hours > 0) {
      return '$sign${hours}h+';
    }
    
    if (absSeconds == 0) {
      return '${sign}0h';
    }
    
    return '$sign<1h';
  }
}

class DigitalClockFormatter implements UnitFormatter {
  @override
  String format(UnitData data) {
    if (data.category != UnitCategory.time) return data.value.toString();

    final totalSeconds = (data.value * data.type.baseFactor).toInt();
    final absSeconds = totalSeconds.abs();

    final hours = (absSeconds ~/ 3600);
    final minutes = (absSeconds % 3600) ~/ 60;

    final hStr = (hours % 24).toString().padLeft(2, '0');
    final mStr = minutes.toString().padLeft(2, '0');

    return '$hStr:$mStr';
  }
}

  class TwelveHourClockFormatter implements UnitFormatter {
    @override
    String format(UnitData data) {
      if (data.category != UnitCategory.time) return data.value.toString();

      final totalSeconds = (data.value * data.type.baseFactor).toInt();
      final absSeconds = totalSeconds.abs();

      final totalMinutes = absSeconds ~/ 60;
      final hours24 = (totalMinutes ~/ 60) % 24;
      final minutes = totalMinutes % 60;

      final period = hours24 >= 12 ? "global_pm".localized() : "global_am".localized();
      var hours12 = hours24 % 12;
      if (hours12 == 0) hours12 = 12;

      final hStr = hours12.toString().padLeft(2, '0');
      final mStr = minutes.toString().padLeft(2, '0');

      return '$hStr:$mStr $period';
    }
  }

  class DigitalDurationFormatter implements UnitFormatter {
    @override
    String format(UnitData data) {
      if (data.category != UnitCategory.time) return data.value.toString();

      final totalSeconds = (data.value * data.type.baseFactor).toInt();
      final absSeconds = totalSeconds.abs();

      final minutes = (absSeconds ~/ 60).toString().padLeft(2, '0');
      final seconds = (absSeconds % 60).toString().padLeft(2, '0');

      return '$minutes:$seconds';
    }
  }

  class RoundedDistanceFormatter implements UnitFormatter {
    @override
    String format(UnitData data) {
      if (data.category != UnitCategory.length) return data.value.toString();

      final value = data.value;
      if (value == 0) return '0 ${data.type.symbol}';
      
      return '${value.round()}+';
    }
  }

  class ShortDurationFormatter implements UnitFormatter {
    @override
    String format(UnitData data) {
      if (data.category != UnitCategory.time) return data.value.toString();

      final totalSeconds = (data.value * data.type.baseFactor).toInt();
      final absSeconds = totalSeconds.abs();

      final hours = absSeconds ~/ 3600;
      final minutes = (absSeconds % 3600) ~/ 60;

      if (hours > 0 && minutes > 0) return '${hours}h ${minutes}m';
      if (hours > 0) return '${hours}h';
      return '${minutes}m';
    }
  }

  class LongDurationFormatter implements UnitFormatter {
  @override
  String format(UnitData data) {
  if (data.category != UnitCategory.time) return data.value.toString();


  final totalSeconds = data.value.toInt();
  final days = totalSeconds ~/ (24 * 3600);
  final hours = (totalSeconds ~/ 3600) % 24;
  final minutes = (totalSeconds ~/ 60) % 60;

  if (days > 0) {
  return '$days ${"global_days".localized()} '
      '$hours ${"global_hours".localized()}'
      ' $minutes ${"global_minutes".localized()}';
  }
  if (hours > 0) {
  return '$hours ${"global_hours".localized()} '
      '$minutes ${"global_minutes".localized()}';
  }
  return '$minutes ${"global_minutes".localized()}';
  }
}
