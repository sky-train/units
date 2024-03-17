import '../enums.dart';
import '../measurement.dart';
import '../unit.dart';


class Length extends Measurement<ULength> {
  Length()
      : super([
          MetricUnit(ULength.mm, 1e-3),
          MetricUnit(ULength.cm, 1e-2),
          MetricUnit(ULength.m, 1),
          MetricUnit(ULength.km, 1e3),
          ImperialUnit(ULength.mil, 1 / 12000),
          ImperialUnit(ULength.inch, 1 / 12),
          ImperialUnit(ULength.yd, 3),
          ImperialUnit(ULength.ftUs, 1.000002),
          ImperialUnit(ULength.ft, 1),
          ImperialUnit(ULength.fathom, 6),
          ImperialUnit(ULength.mi, 5280),
          ImperialUnit(ULength.nMi, 6076.12),
        ], {
          UnitSystem.metrical: {UnitSystem.imperial: 3.28084},
          UnitSystem.imperial: {UnitSystem.metrical: 1 / 3.28084}
        });
}
