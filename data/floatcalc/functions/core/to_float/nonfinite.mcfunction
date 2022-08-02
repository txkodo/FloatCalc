#> floatcalc:core/to_float/nonfinite
# @internal

# +0 / -0
execute unless data storage floatcalc: x[2] run data modify storage floatcalc: float set value 0f

# +Infinity
execute unless data storage floatcalc: x[1] if data storage floatcalc: {x:[1]} run data modify storage floatcalc: float set value +1.0e39f

# -Infinity
execute unless data storage floatcalc: x[1] if data storage floatcalc: {x:[-1]} run data modify storage floatcalc: float set value -1.0e39f

# NaN
execute unless data storage floatcalc: x[0] run data modify storage floatcalc: float set from storage floatcalc:core NaNf

