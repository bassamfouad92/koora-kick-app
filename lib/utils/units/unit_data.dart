import 'unit_types.dart';

class UnitData {
  final double value;
  final UnitType type;

  const UnitData({
    required this.value,
    required this.type,
  });

  UnitCategory get category => type.category;
}
