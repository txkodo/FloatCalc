#> floatcalc:core/add/switch
# @internal

data modify storage floatcalc:core x set from storage floatcalc: y
data modify storage floatcalc:core y set from storage floatcalc: x

scoreboard players operation #e floatcalc = #_ floatcalc