#> floatcalc:core/to_float/tree/23
# e:[27,35) | [35,43)
# @internal
execute if score #e floatcalc matches ..40 store result storage floatcalc: float float 134217728 run scoreboard players get #f floatcalc
execute if score #e floatcalc matches 40.. store result storage floatcalc: float float 34359738368 run scoreboard players get #f floatcalc
