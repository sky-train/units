import '../enums.dart';
import '../measurement.dart';
import '../unit.dart';

class Volume extends Measurement<UVolume> {
  Volume()
      : super([
          MetricUnit(UVolume.mm3, 1 / 1000000),
          MetricUnit(UVolume.cm3, 1 / 1000),
          MetricUnit(UVolume.ml, 1 / 1000),
          MetricUnit(UVolume.l, 1),
          MetricUnit(UVolume.kl, 1000),
          MetricUnit(UVolume.Ml, 1000000),
          MetricUnit(UVolume.Gl, 1000000000),
          MetricUnit(UVolume.m3, 1000),
          MetricUnit(UVolume.km3, 1000000000000),
          MetricUnit(UVolume.cl, 1 / 100),
          MetricUnit(UVolume.dl, 1 / 10),
          MetricUnit(UVolume.krm, 1 / 1000),
          MetricUnit(UVolume.tsk, 5 / 1000),
          MetricUnit(UVolume.msk, 15 / 1000),
          MetricUnit(UVolume.kkp, 150 / 1000),
          MetricUnit(UVolume.glas, 200 / 1000),
          MetricUnit(UVolume.kanna, 2.617),
          ImperialUnit(UVolume.tsp, 1 / 6),
          ImperialUnit(UVolume.Tbs, 1 / 2),
          ImperialUnit(UVolume.in3, 0.55411),
          ImperialUnit(UVolume.flOz, 1),
          ImperialUnit(UVolume.cup, 8),
          ImperialUnit(UVolume.pnt, 16),
          ImperialUnit(UVolume.qt, 32),
          ImperialUnit(UVolume.gal, 128),
          ImperialUnit(UVolume.ft3, 957.506),
          ImperialUnit(UVolume.yd3, 25852.7),
        ], {
          UnitSystem.metrical: {UnitSystem.imperial: 33.8140226},
          UnitSystem.imperial: {UnitSystem.metrical: 1 / 33.8140226}
        });
}
