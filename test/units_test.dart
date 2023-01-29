import 'package:test/test.dart';
import 'package:units/units.dart';

void main() {
  group('converter', () {
    test('mass', () {
      final mass = Mass();
      num value = mass.convert(100, from: MassUnits.g, to: MassUnits.kg).value;
      expect(value, 0.1);
    });
    test('energy', () {
      final energy = Energy();
      final value = energy.convert(100, from: EnergyUnits.kCal, to: EnergyUnits.kJ).value;
      expect(value, 418.4);
    });
  });
}
