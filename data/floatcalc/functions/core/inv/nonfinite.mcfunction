#> floatcalc:core/inv/nonfinite
# @internal 
# 0
execute store success storage floatcalc:core inv._ byte 1 unless data storage floatcalc:core x[2] if data storage floatcalc:core x[1] run data modify storage floatcalc:core x set value [1]
# Inf
execute if data storage floatcalc:core inv{_:0b} unless data storage floatcalc:core x[1] if data storage floatcalc:core x[0] run data modify storage floatcalc:core x set value [1,0]
