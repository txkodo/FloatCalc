
data modify storage floatcalc: float set from storage floatcalc:test x
function floatcalc:api/from_float
data remove storage floatcalc: float
function floatcalc:api/to_float
tellraw @s [{"storage":"floatcalc:test","nbt":"x"}," -> ",{"storage":"floatcalc:","nbt":"x"}," -> ",{"storage":"floatcalc:","nbt":"float"}]