enum UnitCategory {
  length,
  time,
}

enum UnitType {
  meters(category: UnitCategory.length, baseFactor: 1.0, symbol: 'm'),
  kilometers(category: UnitCategory.length, baseFactor: 1000.0, symbol: 'km'),
  miles(category: UnitCategory.length, baseFactor: 1609.34, symbol: 'miles'),
  seconds(category: UnitCategory.time, baseFactor: 1.0, symbol: 's'),
  minutes(category: UnitCategory.time, baseFactor: 60.0, symbol: 'm'),
  hours(category: UnitCategory.time, baseFactor: 3600.0, symbol: 'h');

  final UnitCategory category;
  final double baseFactor;
  final String symbol;

  const UnitType({
    required this.category,
    required this.baseFactor,
    required this.symbol,
  });

  static UnitType fromString(String value) {
    if (value == 'miles') return UnitType.miles;
    return UnitType.kilometers;
  }
}
