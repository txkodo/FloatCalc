#> floatcalc:core/add/add
# @internal

execute store result score #f floatcalc run data get storage floatcalc:core tx[2]
execute store result score #_ floatcalc run data get storage floatcalc:core ty[2]
scoreboard players operation #f floatcalc += #_ floatcalc

execute if score #f floatcalc matches 0.. run function floatcalc:core/add/carry
execute if score #f floatcalc matches ..-1 run scoreboard players add #f floatcalc 1073741824

data modify storage floatcalc:core x[0] set from storage floatcalc:core ty[0]
execute store result storage floatcalc:core x[1] int 1 run scoreboard players get #e floatcalc
execute store result storage floatcalc:core x[2] int 1 run scoreboard players get #f floatcalc