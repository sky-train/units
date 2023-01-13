import 'package:test/test.dart';
import 'package:units/units.dart';

void main() {
  group('converter', () {
    test('mass', () {
      final mass = Mass();
      num value = mass.convert(100, from: MassUnits.g, to: MassUnits.kg).value;
      // print(mass.convert(100, from: MassUnits.g, to: MassUnits.oz).value);
      // print(mass.convert(3.527399072294044, from: MassUnits.oz, to: MassUnits.g).value);

      expect(value, 0.1);
    });
  });
}
