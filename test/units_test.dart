import 'package:test/test.dart';
import 'package:units/units.dart';

void main() {
  group('converter', () {
    test('mass', () {

      double value = Units.mass.convert(100, from: UMass.g, to: UMass.kg).value;
      expect(value, 0.1);
    });
    test('energy', () {
      double value = Units.energy.convert(100, from: UEnergy.kCal, to: UEnergy.kJ).value;
      expect(value, 418.4);
    });
  });
}
