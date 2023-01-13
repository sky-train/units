/// UnitValue { String id, num value, format, to }
///
/// mass( value ).from(unit).to(unit) => unitValue
/// unitValue.to()
/// mass.from( value, unit ).to(Units.mg).format()
/// mass( unitValue )



/// mass(900).from().to(MassUnits.t)
/// UnitValue.to().toString("format")


mass.convert( 800, from: MassUnits.g, to: MassUnits.mgr )

