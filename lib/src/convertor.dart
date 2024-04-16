import 'enums.dart';
import 'unit.dart';

class Anchor<T> {
  final Unit<T> unit;
  final Map<UnitSystem, double> ratios;

  Anchor(this.unit, this.ratios);

  UnitSystem get system {
    return unit.system;
  }
}

abstract class Convertor<T> {
  final Map<T, Unit<T>> units = {};
  final List<UnitSystem> systems = [];
  late final Map<UnitSystem, Anchor<T>>? anchors;

  UnitValue<T> convert(double value, {required T from, required T to}) {
    if (anchors == null || units[from]!.system == units[to]!.system) {
      double aValue = value * units[from]!.toAnchor;
      double newValue = aValue / units[to]!.toAnchor;
      return UnitValue<T>(newValue, units[to]!);
    } else {
      double aValue = value * units[from]!.toAnchor * anchors![units[from]!.system]!.ratios[units[to]!.system]!;
      double newValue = aValue / units[to]!.toAnchor;
      return UnitValue<T>(newValue, units[to]!);
    }
  }

  Convertor(List<Unit<T>> listUnits, [Map<UnitSystem, Map<UnitSystem, double>>? listAnchors]) {
    anchors = listAnchors != null ? {} : null;

    for (var unit in listUnits) {
      unit.measure = this;

      // fill systems
      if (!systems.contains(unit.system)) {
        systems.add(unit.system);
      }

      // fill units
      if (!units.containsKey(unit.symbol)) {
        units[unit.symbol] = unit;
      } else {
        //  throw
      }

      // fill anchors
      if (unit.isAnchor) {
        if (anchors != null && !anchors!.keys.contains(unit.system)) {
          anchors![unit.system] = Anchor(unit, listAnchors![unit.system]!);
        }
      }
    }
  }
}
