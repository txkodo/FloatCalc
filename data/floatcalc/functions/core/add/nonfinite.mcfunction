#> floatcalc:core/add/nonfinite
# @internal

scoreboard players set #_ floatcalc 0

data modify storage floatcalc:core x set from storage floatcalc: x

# x == +Inf & (y == NaN | y == -Inf) : NaN
execute unless data storage floatcalc: x[1] if data storage floatcalc: {x:[1]} unless data storage floatcalc: y[1] unless data storage floatcalc: {y:[1]} run data modify storage floatcalc:core x set value []

# x == -Inf & (y == NaN | y == +Inf) : NaN
execute unless data storage floatcalc: x[1] if data storage floatcalc: {x:[-1]} unless data storage floatcalc: y[1] unless data storage floatcalc: {y:[-1]} run data modify storage floatcalc:core x set value []

# x == 0 | x == Num
execute if data storage floatcalc: x[1] run data modify storage floatcalc:core x set from storage floatcalc: y

# x == Num & y == 0
execute if data storage floatcalc: x[2] if data storage floatcalc: y[1] run data modify storage floatcalc:core x set from storage floatcalc: x

# x == NaN
execute unless data storage floatcalc: x[0] run data modify storage floatcalc:core x set value []

data modify storage floatcalc: x set from storage floatcalc:core x
