import 'measurement.dart';

abstract class Unit<T> {
  final T id;
  final Systems system;
  late final Measurement<T> measurement;

  final num toAnchor;

  Unit(this.system, this.id, this.toAnchor);

  bool get isAnchor {
    return toAnchor == 1;
  }
}

class SiUnit<T> extends Unit<T> {
  SiUnit(T id, num toAnchor) : super(Systems.si, id, toAnchor);
}

class MetricUnit<T> extends Unit<T> {
  MetricUnit(T id, num toAnchor) : super(Systems.metric, id, toAnchor);
}

class ImperialUnit<T> extends Unit<T> {
  ImperialUnit(T id, num toAnchor) : super(Systems.imperial, id, toAnchor);
}

class UnitValue<T> {
  final num value;
  final Unit<T> unit;

  UnitValue(this.value, this.unit);

  UnitValue<T> to(T toUnit) {
    return unit.measurement.convert(value, from: unit.id, to: toUnit);
  }
}
