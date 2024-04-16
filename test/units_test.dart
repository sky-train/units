import 'package:test/test.dart';
import 'package:units/units.dart';

void main() {
  group('converter', () {
    test('mass', () {

      double value = Units.mass.convert(100, from: Mass.g, to: Mass.kg).value;
      expect(value, 0.1);
    });
    test('energy', () {
      double value = Units.energy.convert(100, from: Energy.kCal, to: Energy.kJ).value;
      expect(value, 418.4);
    });
  });
}
