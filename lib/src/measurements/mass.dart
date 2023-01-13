import '../measurement.dart';
import '../unit.dart';

enum MassUnits { mcg, mg, g, kg, mt, oz, lb, t }

class Mass extends Measurement<MassUnits> {
  Mass()
      : super([
          MetricUnit(MassUnits.g, 1),
          MetricUnit(MassUnits.kg, 1000),
          MetricUnit(MassUnits.mt, 1000000),
          MetricUnit(MassUnits.mg, 1 / 1000),
          MetricUnit(MassUnits.mcg, 1 / 1000000),
          ImperialUnit(MassUnits.t, 2000),
          ImperialUnit(MassUnits.oz, 1 / 16),
          ImperialUnit(MassUnits.lb, 1),
        ], {
          Systems.metric: {
            Systems.imperial: 1 / 453.592,
          },
          Systems.imperial: {
            Systems.metric: 453.592,
          }
        });
}
