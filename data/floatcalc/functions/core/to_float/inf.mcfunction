#> floatcalc:core/to_float/inf
# @internal

# +Infinity
execute if score #s floatcalc matches 1 run data modify storage floatcalc:core float set value +1.0e39f

# -Infinity
execute if score #s floatcalc matches -1 run data modify storage floatcalc:core float set value -1.0e39f
