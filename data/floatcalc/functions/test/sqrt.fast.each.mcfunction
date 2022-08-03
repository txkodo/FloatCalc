data modify storage floatcalc: float set from storage floatcalc:test x
function floatcalc:api/from_float

function floatcalc:api/sqrt.fast

function floatcalc:api/to_float
tellraw @s ["sqrt.fast ",{"storage":"floatcalc:test","nbt":"x"}," -> ",{"storage":"floatcalc:","nbt":"float"}]