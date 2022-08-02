#> floatcalc:core/to_float/nonfinite
# @internal

# +0 / -0
execute unless data storage floatcalc:core x[2] run data modify storage floatcalc:core float set value 0f

# +Infinity
execute unless data storage floatcalc:core x[1] if data storage floatcalc:core {x:[1]} run data modify storage floatcalc:core float set value +1.0e39f

# -Infinity
execute unless data storage floatcalc:core x[1] if data storage floatcalc:core {x:[-1]} run data modify storage floatcalc:core float set value -1.0e39f

# NaN
execute unless data storage floatcalc:core x[0] run data modify storage floatcalc:core float set from storage floatcalc:core NaNf

