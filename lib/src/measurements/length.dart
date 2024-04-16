import '../enums.dart';
import '../convertor.dart';
import '../unit.dart';

class LengthConvertor extends Convertor<Length> {
  LengthConvertor()
      : super(
          [
            MetricUnit(Length.mm, 1e-3),
            MetricUnit(Length.cm, 1e-2),
            MetricUnit(Length.m, 1),
            MetricUnit(Length.km, 1e3),
            ImperialUnit(Length.mil, 1 / 12000),
            ImperialUnit(Length.inch, 1 / 12),
            ImperialUnit(Length.yd, 3),
            ImperialUnit(Length.ftUs, 1.000002),
            ImperialUnit(Length.ft, 1),
            ImperialUnit(Length.fathom, 6),
            ImperialUnit(Length.mi, 5280),
            ImperialUnit(Length.nMi, 6076.12),
          ],
          {
            UnitSystem.metrical: {UnitSystem.imperial: 3.28084},
            UnitSystem.imperial: {UnitSystem.metrical: 1 / 3.28084}
          },
        );
}
