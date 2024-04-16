import 'measurements/energy.dart';
import 'measurements/length.dart';
import 'measurements/mass.dart';
import 'measurements/time.dart';
import 'measurements/volume.dart';


sealed class Units {
  static final MassConvertor mass = MassConvertor();
  static final TimeConvertor time = TimeConvertor();
  static final EnergyConvertor energy = EnergyConvertor();
  static final LengthConvertor length = LengthConvertor();
  static final VolumeConvertor volume = VolumeConvertor();
}


