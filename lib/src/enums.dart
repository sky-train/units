enum UnitSystem { metrical, imperial, si }

enum Measure { energy, length, mass, time, volume }

enum Energy { Ws, Wm, Wh, mWh, kWh, MWh, GWh, J, kJ, cal, kCal, MJ, GJ }

enum Length { mm, cm, m, km, mil, inch, yd, ftUs, ft, fathom, mi, nMi }

enum Mass { mcg, mg, g, kg, mt, oz, lb, t }

enum Time { ns, mu, ms, s, min, h, d, week, month, year }

enum Volume {
  mm3,
  cm3,
  ml,
  l,
  kl,
  Ml,
  Gl,
  m3,
  km3,
  cl,
  dl,
  krm,
  tsk,
  msk,
  kkp,
  in3,
  flOz,
  pnt,
  qt,
  gal,
  ft3,
  yd3
}

enum CookUnits {
  tsp,  // чайна ложка,
  Tbs,  // столовая ложка
  cup,  // чашка
}


extension MassMultiLanuages on Mass {

  String get en {
    return '';
  }
}
