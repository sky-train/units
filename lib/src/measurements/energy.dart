import '../enums.dart';
import '../convertor.dart';
import '../unit.dart';

class EnergyConvertor extends Convertor<Energy> {
  EnergyConvertor()
      : super([
          SiUnit(Energy.Ws, 1),
          SiUnit(Energy.Wm, 60),
          SiUnit(Energy.Wh, 3600),
          SiUnit(Energy.mWh, 3.6),
          SiUnit(Energy.kWh, 3600000),
          SiUnit(Energy.MWh, 3600000000),
          SiUnit(Energy.GWh, 3600000000000),
          SiUnit(Energy.J, 1),
          SiUnit(Energy.kJ, 1000),
          SiUnit(Energy.cal, 4.184),
          SiUnit(Energy.kCal, 4184),
          SiUnit(Energy.MJ, 1000000),
          SiUnit(Energy.GJ, 1000000000),
        ]);
}
