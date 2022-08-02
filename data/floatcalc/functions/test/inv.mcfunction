
data modify storage floatcalc: float set from storage floatcalc:test x
function floatcalc:api/from_float
data modify storage floatcalc:core x set from storage floatcalc: x

function floatcalc:core/inv/finite

data modify storage floatcalc: x set from storage floatcalc:core x
function floatcalc:api/to_float
tellraw @s ["1 / ",{"storage":"floatcalc:test","nbt":"x"}," -> ",{"storage":"floatcalc:","nbt":"float"}]
