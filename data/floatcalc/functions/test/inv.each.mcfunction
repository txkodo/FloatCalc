data modify storage floatcalc: float set from storage floatcalc:test x
function floatcalc:api/from_float

function floatcalc:api/inv

function floatcalc:api/to_float
tellraw @s ["1 / ",{"storage":"floatcalc:test","nbt":"x"}," -> ",{"storage":"floatcalc:","nbt":"float"}]