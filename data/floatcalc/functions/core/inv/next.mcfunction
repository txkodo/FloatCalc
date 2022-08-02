#> floatcalc:core/inv/next
# @internal

scoreboard players set #_ floatcalc 1073741824
scoreboard players operation #_ floatcalc /= #e floatcalc
scoreboard players operation #c floatcalc = #a floatcalc
scoreboard players operation #c floatcalc /= #_ floatcalc
scoreboard players operation #a floatcalc -= #c floatcalc