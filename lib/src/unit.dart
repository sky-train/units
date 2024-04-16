import 'convertor.dart';
import 'enums.dart';

abstract class Unit<T> {
  final T symbol;
  final UnitSystem system;
  late final Convertor<T> measure;

  final double toAnchor;

  Unit(this.system, this.symbol, this.toAnchor);

  bool get isAnchor {
    return toAnchor == 1;
  }
}

class SiUnit<T> extends Unit<T> {
  SiUnit(T id, double toAnchor) : super(UnitSystem.si, id, toAnchor);
}

class MetricUnit<T> extends Unit<T> {
  MetricUnit(T id, double toAnchor) : super(UnitSystem.metrical, id, toAnchor);
}

class ImperialUnit<T> extends Unit<T> {
  ImperialUnit(T id, double toAnchor) : super(UnitSystem.imperial, id, toAnchor);
}

class UnitValue<T> {
  final double value;
  final Unit<T> unit;

  UnitValue(this.value, this.unit);

  UnitValue<T> to(T toUnit) {
    return unit.measure.convert(value, from: unit.symbol, to: toUnit);
  }
}
