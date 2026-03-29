import 'unit_data.dart';
import 'unit_types.dart';

class UnitConverter {
  const UnitConverter();

  UnitData convert(UnitData data, UnitType targetType) {
    if (data.type == targetType) return data;

    final baseValue = data.value * data.type.baseFactor;
    final convertedValue = baseValue / targetType.baseFactor;

    return UnitData(value: convertedValue, type: targetType);
  }
}
