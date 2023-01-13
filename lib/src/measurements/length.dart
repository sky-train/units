import '../measurement.dart';
import '../unit.dart';

enum LengthUnits { mm, cm, m, km, mil, inch, yd, ftUs, ft, fathom, mi, nMi }

class Length extends Measurement<LengthUnits> {
  Length()
      : super([
          MetricUnit(LengthUnits.mm, 1e-3),
          MetricUnit(LengthUnits.cm, 1e-2),
          MetricUnit(LengthUnits.m, 1),
          MetricUnit(LengthUnits.km, 1e3),
          ImperialUnit(LengthUnits.mil, 1 / 12000),
          ImperialUnit(LengthUnits.inch, 1 / 12),
          ImperialUnit(LengthUnits.yd, 3),
          ImperialUnit(LengthUnits.ftUs, 1.000002),
          ImperialUnit(LengthUnits.ft, 1),
          ImperialUnit(LengthUnits.fathom, 6),
          ImperialUnit(LengthUnits.mi, 5280),
          ImperialUnit(LengthUnits.nMi, 6076.12),
        ], {
          Systems.metric: {Systems.imperial: 3.28084},
          Systems.imperial: {Systems.metric: 1 / 3.28084}
        });
}
