#> floatcalc:core/add/sub
# @internal

execute store result score #f floatcalc run data get storage floatcalc:core ty[2]
execute store result score #_ floatcalc run data get storage floatcalc:core tx[2]
scoreboard players operation #f floatcalc -= #_ floatcalc

data modify storage floatcalc:core x[0] set from storage floatcalc:core ty[0]
execute store result storage floatcalc:core x[1] int 1 run scoreboard players get #e floatcalc
execute store result storage floatcalc:core x[2] int 1 run scoreboard players remove #f floatcalc 1073741824
execute if score #f floatcalc matches -1073741824 run data modify storage floatcalc:core x set value [1,0]

execute if score #f floatcalc matches -1073741823.. run function floatcalc:core/descale/main

# なぜかこれがないと動かない
data get storage : {}