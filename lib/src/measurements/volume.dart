import '../enums.dart';
import '../convertor.dart';
import '../unit.dart';

class VolumeConvertor extends Convertor<Volume> {
  VolumeConvertor()
      : super([
          MetricUnit(Volume.mm3, 1 / 1000000),
          MetricUnit(Volume.cm3, 1 / 1000),
          MetricUnit(Volume.ml, 1 / 1000),
          MetricUnit(Volume.l, 1),
          MetricUnit(Volume.kl, 1000),
          MetricUnit(Volume.Ml, 1000000),
          MetricUnit(Volume.Gl, 1000000000),
          MetricUnit(Volume.m3, 1000),
          MetricUnit(Volume.km3, 1000000000000),
          MetricUnit(Volume.cl, 1 / 100),
          MetricUnit(Volume.dl, 1 / 10),
          MetricUnit(Volume.krm, 1 / 1000),
          MetricUnit(Volume.tsk, 5 / 1000),
          MetricUnit(Volume.msk, 15 / 1000),
          MetricUnit(Volume.kkp, 150 / 1000),
          MetricUnit(Volume.glas, 200 / 1000),
          MetricUnit(Volume.kanna, 2.617),
          ImperialUnit(Volume.tsp, 1 / 6),
          ImperialUnit(Volume.Tbs, 1 / 2),
          ImperialUnit(Volume.in3, 0.55411),
          ImperialUnit(Volume.flOz, 1),
          ImperialUnit(Volume.cup, 8),
          ImperialUnit(Volume.pnt, 16),
          ImperialUnit(Volume.qt, 32),
          ImperialUnit(Volume.gal, 128),
          ImperialUnit(Volume.ft3, 957.506),
          ImperialUnit(Volume.yd3, 25852.7),
        ], {
          UnitSystem.metrical: {UnitSystem.imperial: 33.8140226},
          UnitSystem.imperial: {UnitSystem.metrical: 1 / 33.8140226}
        });
}
