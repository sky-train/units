import '../measurement.dart';
import '../unit.dart';

enum EnergyUnits { Ws, Wm, Wh, mWh, kWh, MWh, GWh, J, kJ, Cal, MJ, GJ }

class Energy extends Measurement<EnergyUnits> {
  Energy()
      : super([
          //SiUnit(EnergyUnits.Ws, 1 ),
          SiUnit(EnergyUnits.Wm, 60),
          SiUnit(EnergyUnits.Wh, 3600),
          SiUnit(EnergyUnits.mWh, 3.6),
          SiUnit(EnergyUnits.kWh, 3600000),
          SiUnit(EnergyUnits.MWh, 3600000000),
          SiUnit(EnergyUnits.GWh, 3600000000000),
          SiUnit(EnergyUnits.J, 1),
          SiUnit(EnergyUnits.kJ, 1000),
          SiUnit(EnergyUnits.Cal, 4.184),
          SiUnit(EnergyUnits.MJ, 1000000),
          SiUnit(EnergyUnits.GJ, 1000000000),
        ], {
          Systems.si: {Systems.si: 1},
        });
}
