#> floatcalc:core/mul/carry
# @internal

scoreboard players remove #f floatcalc 1073741824
execute store result storage floatcalc:core x[2] int 1 run scoreboard players operation #f floatcalc /= #2^1 floatcalc
scoreboard players set #_ floatcalc 1