import '../measurement.dart';
import '../unit.dart';

enum TimeUnits { ns, mu, ms, s, min, h, d, week, month, year }

class Time extends Measurement<TimeUnits> {
  Time()
      : super([
          SiUnit(TimeUnits.ns, 1 / 1000000000),
          SiUnit(TimeUnits.mu, 1 / 1000000),
          SiUnit(TimeUnits.ms, 1 / 1000),
          SiUnit(TimeUnits.s, 1),
          SiUnit(TimeUnits.min, 60),
          SiUnit(TimeUnits.h, 60 * 60),
          SiUnit(TimeUnits.d, 60 * 60 * 24),
          SiUnit(TimeUnits.week, 60 * 60 * 24 * 7),
          SiUnit(TimeUnits.month, (60 * 60 * 24 * 365.25) / 12),
          SiUnit(TimeUnits.year, 60 * 60 * 24 * 365.25),
        ]);
}
