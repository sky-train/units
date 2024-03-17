import '../enums.dart';
import '../measurement.dart';
import '../unit.dart';


class Energy extends Measurement<UEnergy> {
  Energy()
      : super([
          SiUnit(UEnergy.Ws, 1),
          SiUnit(UEnergy.Wm, 60),
          SiUnit(UEnergy.Wh, 3600),
          SiUnit(UEnergy.mWh, 3.6),
          SiUnit(UEnergy.kWh, 3600000),
          SiUnit(UEnergy.MWh, 3600000000),
          SiUnit(UEnergy.GWh, 3600000000000),
          SiUnit(UEnergy.J, 1),
          SiUnit(UEnergy.kJ, 1000),
          SiUnit(UEnergy.cal, 4.184),
          SiUnit(UEnergy.kCal, 4184),
          SiUnit(UEnergy.MJ, 1000000),
          SiUnit(UEnergy.GJ, 1000000000),
        ]);
}
