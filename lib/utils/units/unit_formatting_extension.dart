import 'package:koora_kick/utils/units/unit_builder.dart';
import 'package:koora_kick/utils/units/unit_data.dart';
import 'package:koora_kick/utils/units/unit_formatter.dart';

extension UnitFormattingExtension on UnitData {
  String formatAsDistance({required DistanceFormatStyle style}) => switch (style) {
      DistanceFormatStyle.lowerBound => SimpleDistanceFormatter().format(this),
      DistanceFormatStyle.rounded    => RoundedDistanceFormatter().format(this),
    };

  String formatAsTime({required TimeFormatStyle style}) => switch (style) {
      TimeFormatStyle.digital24h      => DigitalClockFormatter().format(this),
      TimeFormatStyle.digital12h      => TwelveHourClockFormatter().format(this),
      TimeFormatStyle.approximate     => SmartTimeFormatter().format(this),
      TimeFormatStyle.digitalDuration => DigitalDurationFormatter().format(this),
      TimeFormatStyle.longDuration    => LongDurationFormatter().format(this),
      TimeFormatStyle.shortDuration   => ShortDurationFormatter().format(this),
    };

  String get unitLabel => type.symbol;
}

extension DurationFormatX on Duration {
  String format(TimeFormatStyle style) => UnitBuilder.fromSeconds(inSeconds.toDouble())
        .value
        .formatAsTime(style: style);
}

extension DateTimeFormatX on DateTime {
  String formatAsTime(TimeFormatStyle style) => UnitBuilder.fromSeconds(
        (hour * 3600 + minute * 60 + second).toDouble(),
      ).value.formatAsTime(style: style);
}