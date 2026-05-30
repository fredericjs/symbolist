#import "@local/symbolist:0.2.0": *

// Exercise inheritance for the numbering: auto default — when the
// document numbers its headings, symbolist's section titles should
// pick that numbering up too.
#set heading(numbering: "1.")

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

= Custom heading level
#print-symbols(level: 1)

= Italic symbols (upright: false)
#print-symbols(upright: false)

= Suppressed title numbering (numbering: none)
#print-symbols(numbering: none)
