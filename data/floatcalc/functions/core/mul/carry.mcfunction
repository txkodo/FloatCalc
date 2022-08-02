#> floatcalc:core/mul/carry
# @internal

scoreboard players remove #x1 floatcalc 1073741824
execute store result storage floatcalc:core x[2] int 1 run scoreboard players operation #x1 floatcalc /= #2^1 floatcalc
scoreboard players set #_ floatcalc 1