#import "@local/symbolist:0.1.0": *

// --- Basic Latin symbols ---
#def-symbol($F$, "Force", unit: "N")
#def-symbol($m$, "Mass", unit: "kg")
#def-symbol($a$, "Acceleration", unit: "m/s²")
#def-symbol($v$, "Velocity", unit: "m/s")
#def-symbol($E_k$, "Kinetic energy", unit: "J")

// --- Greek symbols ---
#def-symbol($alpha$, "Angular acceleration", unit: "rad/s²")
#def-symbol($omega$, "Angular velocity", unit: "rad/s")
#def-symbol($theta$, "Angle", unit: "rad")
#def-symbol($mu$, "Friction coefficient")  // no unit — must not crash

// --- Print with all options ---

= Default (units + headers)
#print-symbols()

= No units column
#print-symbols(print-units: false)

= No headers
#print-symbols(print-header: false)

= No units, no headers
#print-symbols(print-units: false, print-header: false)
