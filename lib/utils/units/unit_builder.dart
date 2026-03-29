import 'unit_converter.dart';
import 'unit_data.dart';
import 'unit_formatter.dart';
import 'unit_types.dart';
class UnitBuilder {
  UnitData _data;
  final UnitConverter _converter;

  UnitBuilder._(this._data, [this._converter = const UnitConverter()]);

  factory UnitBuilder.fromUnitData(UnitData data) => UnitBuilder._(data);

  static UnitBuilder fromMeters(double value) =>
      UnitBuilder._(UnitData(value: value, type: UnitType.meters));

  static UnitBuilder fromKilometers(double value) =>
      UnitBuilder._(UnitData(value: value, type: UnitType.kilometers));

  static UnitBuilder fromMiles(double value) =>
      UnitBuilder._(UnitData(value: value, type: UnitType.miles));

  static UnitBuilder fromSeconds(double value) =>
      UnitBuilder._(UnitData(value: value, type: UnitType.seconds));

  static UnitBuilder fromMinutes(double value) =>
      UnitBuilder._(UnitData(value: value, type: UnitType.minutes));

  static UnitBuilder fromHours(double value) =>
      UnitBuilder._(UnitData(value: value, type: UnitType.hours));

  UnitBuilder to(UnitType targetType) {
    _data = _converter.convert(_data, targetType);
    return this;
  }

  UnitData get value => _data;
  String format(UnitFormatter formatter) => formatter.format(_data);
}
