data modify storage floatcalc: float set from storage floatcalc:test y
function floatcalc:api/from_float
data modify storage floatcalc: y set from storage floatcalc: x

data modify storage floatcalc: float set from storage floatcalc:test x
function floatcalc:api/from_float

function floatcalc:api/div

function floatcalc:api/to_float
tellraw @s [{"storage":"floatcalc:test","nbt":"x"}," / ",{"storage":"floatcalc:test","nbt":"y"}," -> ",{"storage":"floatcalc:","nbt":"float"}]