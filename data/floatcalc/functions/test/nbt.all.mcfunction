
data modify storage floatcalc:test x set value 0f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value 1f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value 10f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value 100f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value -1f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value -10f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value -100f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value 2.0e-38f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value 1.0e39f
function floatcalc:test/nbt

data modify storage floatcalc:test x set value -1.0e39f
function floatcalc:test/nbt

data modify storage floatcalc:test x set from storage floatcalc:core NaNf
function floatcalc:test/nbt

data modify storage floatcalc:test x set value 1.4e-45f
function floatcalc:test/nbt
