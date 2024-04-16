import '../enums.dart';
import '../convertor.dart';
import '../unit.dart';

class MassConvertor extends Convertor<Mass> {
  MassConvertor()
      : super(
          [
            MetricUnit(Mass.g, 1),
            MetricUnit(Mass.kg, 1000),
            MetricUnit(Mass.mt, 1000000),
            MetricUnit(Mass.mg, 1 / 1000),
            MetricUnit(Mass.mcg, 1 / 1000000),
            ImperialUnit(Mass.t, 2000),
            ImperialUnit(Mass.oz, 1 / 16),
            ImperialUnit(Mass.lb, 1),
          ],
          {
            UnitSystem.metrical: {UnitSystem.imperial: 1 / 453.592},
            UnitSystem.imperial: {UnitSystem.metrical: 453.592}
          },
        );
}
