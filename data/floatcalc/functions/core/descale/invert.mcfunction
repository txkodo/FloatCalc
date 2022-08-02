#> floatcalc:core/descale/invert
# @internal

scoreboard players operation #f floatcalc *= #-1 floatcalc
# execute store result score #_ floatcalc run data get storage floatcalc:core x[0]
# execute store result storage floatcalc:core x[0] int 1 run scoreboard players operation #_ floatcalc *= #-1 floatcalc 
