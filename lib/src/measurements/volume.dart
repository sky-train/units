import '../measurement.dart';
import '../unit.dart';

enum VolumeUnits {
  mm3,
  cm3,
  ml,
  l,
  kl,
  Ml,
  Gl,
  m3,
  km3,
  cl,
  dl,
  krm,
  tsk,
  msk,
  kkp,
  glas,
  kanna,
  tsp,
  Tbs,
  in3,
  flOz,
  cup,
  pnt,
  qt,
  gal,
  ft3,
  yd3
}

class Volume extends Measurement<VolumeUnits> {
  Volume()
      : super([
          MetricUnit(VolumeUnits.mm3, 1 / 1000000),
          MetricUnit(VolumeUnits.cm3, 1 / 1000),
          MetricUnit(VolumeUnits.ml, 1 / 1000),
          MetricUnit(VolumeUnits.l, 1),
          MetricUnit(VolumeUnits.kl, 1000),
          MetricUnit(VolumeUnits.Ml, 1000000),
          MetricUnit(VolumeUnits.Gl, 1000000000),
          MetricUnit(VolumeUnits.m3, 1000),
          MetricUnit(VolumeUnits.km3, 1000000000000),
          MetricUnit(VolumeUnits.cl, 1 / 100),
          MetricUnit(VolumeUnits.dl, 1 / 10),
          MetricUnit(VolumeUnits.krm, 1 / 1000),
          MetricUnit(VolumeUnits.tsk, 5 / 1000),
          MetricUnit(VolumeUnits.msk, 15 / 1000),
          MetricUnit(VolumeUnits.kkp, 150 / 1000),
          MetricUnit(VolumeUnits.glas, 200 / 1000),
          MetricUnit(VolumeUnits.kanna, 2.617),
          ImperialUnit(VolumeUnits.tsp, 1 / 6),
          ImperialUnit(VolumeUnits.Tbs, 1 / 2),
          ImperialUnit(VolumeUnits.in3, 0.55411),
          ImperialUnit(VolumeUnits.flOz, 1),
          ImperialUnit(VolumeUnits.cup, 8),
          ImperialUnit(VolumeUnits.pnt, 16),
          ImperialUnit(VolumeUnits.qt, 32),
          ImperialUnit(VolumeUnits.gal, 128),
          ImperialUnit(VolumeUnits.ft3, 957.506),
          ImperialUnit(VolumeUnits.yd3, 25852.7),
        ], {
          Systems.metric: {Systems.imperial: 33.8140226},
          Systems.imperial: {Systems.metric: 1 / 33.8140226}
        });
}
