import '../enums.dart';
import '../convertor.dart';
import '../unit.dart';

class TimeConvertor extends Convertor<Time> {
  TimeConvertor()
      : super([
          SiUnit(Time.ns, 1 / 1000000000),
          SiUnit(Time.mu, 1 / 1000000),
          SiUnit(Time.ms, 1 / 1000),
          SiUnit(Time.s, 1),
          SiUnit(Time.min, 60),
          SiUnit(Time.h, 60 * 60),
          SiUnit(Time.d, 60 * 60 * 24),
          SiUnit(Time.week, 60 * 60 * 24 * 7),
          SiUnit(Time.month, (60 * 60 * 24 * 365.25) / 12),
          SiUnit(Time.year, 60 * 60 * 24 * 365.25),
        ]);
}
