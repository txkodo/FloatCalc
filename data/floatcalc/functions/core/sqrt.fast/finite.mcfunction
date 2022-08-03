#> floatcalc:core/sqrt.fast/finite
# @internal

execute store result score #e floatcalc store result score #_ floatcalc run data get storage floatcalc:core x[1]
scoreboard players operation #_ floatcalc %= #2 floatcalc
execute if score #_ floatcalc matches 1 run function floatcalc:core/sqrt.fast/odd
execute if score #_ floatcalc matches 0 run function floatcalc:core/sqrt.fast/even
scoreboard players remove #a floatcalc 1073741824
scoreboard players operation #e floatcalc /= #2 floatcalc
scoreboard players remove #e floatcalc 15
execute store result storage floatcalc:core x[1] int 1 run scoreboard players get #e floatcalc
execute store result storage floatcalc:core x[2] int 1 run scoreboard players get #a floatcalc
