import '../enums.dart';
import '../measurement.dart';
import '../unit.dart';


class Time extends Measurement<UTime> {
  Time()
      : super([
          SiUnit(UTime.ns, 1 / 1000000000),
          SiUnit(UTime.mu, 1 / 1000000),
          SiUnit(UTime.ms, 1 / 1000),
          SiUnit(UTime.s, 1),
          SiUnit(UTime.min, 60),
          SiUnit(UTime.h, 60 * 60),
          SiUnit(UTime.d, 60 * 60 * 24),
          SiUnit(UTime.week, 60 * 60 * 24 * 7),
          SiUnit(UTime.month, (60 * 60 * 24 * 365.25) / 12),
          SiUnit(UTime.year, 60 * 60 * 24 * 365.25),
        ]);
}
