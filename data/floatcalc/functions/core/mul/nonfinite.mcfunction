#> floatcalc:core/mul/nonfinite
# @internal 

# Inf
execute unless data storage floatcalc:core x[1] run data modify storage floatcalc:core x set value [1,0]

# 0
execute unless data storage floatcalc:core x[2] if data storage floatcalc:core x[1] run data modify storage floatcalc:core x set value [1]
