import 'measurements/energy.dart';
import 'measurements/length.dart';
import 'measurements/mass.dart';
import 'measurements/time.dart';
import 'measurements/volume.dart';


sealed class Units {
  static final Energy energy = Energy();
  static final Length length = Length();
  static final Mass mass = Mass();
  static final Time time = Time();
  static final Volume volume = Volume();
}


