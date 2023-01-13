import 'unit.dart';

enum Systems { metric, imperial, si }

class Anchor<T> {
  final Unit<T> unit;
  final Map<Systems, num> ratios;

  Anchor(this.unit, this.ratios);

  Systems get system {
    return unit.system;
  }
}

abstract class Measurement<T> {
  final Map<T, Unit<T>> units = {};
  final List<Systems> systems = [];
  final Map<Systems, Anchor<T>> anchors = {};

  UnitValue<T> convert(num value, {required T from, required T to}) {
    if (units[from]!.system == units[to]!.system) {
      num aValue = value * units[from]!.toAnchor;
      num newValue = aValue / units[to]!.toAnchor;
      return UnitValue<T>(newValue, units[to]!);
    } else {
      num aValue = value * units[from]!.toAnchor * anchors[units[from]!.system]!.ratios[units[to]!.system]!;
      num newValue = aValue / units[to]!.toAnchor;
      return UnitValue<T>(newValue, units[to]!);
    }
  }

  Measurement(List<Unit<T>> lustUnits, Map<Systems, Map<Systems, num>> listAnchors) {
    for (var unit in lustUnits) {
      unit.measurement = this;

      // fill systems
      if (!systems.contains(unit.system)) {
        systems.add(unit.system);
      }

      // fill units
      if (!units.containsKey(unit.id)) {
        units[unit.id] = unit;
      } else {
        //  throw
      }

      // fill anchors
      if (unit.isAnchor) {
        anchors[unit.system] = Anchor(unit, listAnchors[unit.system]!);
      }
    }
  }
}
