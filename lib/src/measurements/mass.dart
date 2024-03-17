import '../enums.dart';
import '../measurement.dart';
import '../unit.dart';


class Mass extends Measurement<UMass> {
  Mass()
      : super([
          MetricUnit(UMass.g, 1),
          MetricUnit(UMass.kg, 1000),
          MetricUnit(UMass.mt, 1000000),
          MetricUnit(UMass.mg, 1 / 1000),
          MetricUnit(UMass.mcg, 1 / 1000000),
          ImperialUnit(UMass.t, 2000),
          ImperialUnit(UMass.oz, 1 / 16),
          ImperialUnit(UMass.lb, 1),
        ], {
          UnitSystem.metrical: {
            UnitSystem.imperial: 1 / 453.592,
          },
          UnitSystem.imperial: {
            UnitSystem.metrical: 453.592,
          }
        });
}
