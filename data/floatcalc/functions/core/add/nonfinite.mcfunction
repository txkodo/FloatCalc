#> floatcalc:core/add/nonfinite
# @internal

scoreboard players set #_ floatcalc 0

data modify storage floatcalc:core tx set from storage floatcalc:core x

# x == +Inf & (y == NaN | y == -Inf) : NaN
execute unless data storage floatcalc:core x[1] if data storage floatcalc:core {x:[1]} unless data storage floatcalc:core y[1] unless data storage floatcalc:core {y:[1]} run data modify storage floatcalc:core tx set value []

# x == -Inf & (y == NaN | y == +Inf) : NaN
execute unless data storage floatcalc:core x[1] if data storage floatcalc:core {x:[-1]} unless data storage floatcalc:core y[1] unless data storage floatcalc:core {y:[-1]} run data modify storage floatcalc:core tx set value []

# x == 0 | x == Num
execute if data storage floatcalc:core x[1] run data modify storage floatcalc:core tx set from storage floatcalc:core y

# x == Num & y == 0
execute if data storage floatcalc:core x[2] if data storage floatcalc:core y[1] run data modify storage floatcalc:core tx set from storage floatcalc:core x

# x == NaN
execute unless data storage floatcalc:core x[0] run data modify storage floatcalc:core tx set value []

data modify storage floatcalc:core x set from storage floatcalc:core tx
