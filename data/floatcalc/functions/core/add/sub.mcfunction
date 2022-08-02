#> floatcalc:core/add/sub
# @internal

execute store result score #f floatcalc run data get storage floatcalc:core y[2]
execute store result score #_ floatcalc run data get storage floatcalc:core x[2]
scoreboard players operation #f floatcalc -= #_ floatcalc

data modify storage floatcalc: x[0] set from storage floatcalc:core y[0]
execute store result storage floatcalc: x[1] int 1 run scoreboard players get #e floatcalc
execute store result storage floatcalc: x[2] int 1 run scoreboard players remove #f floatcalc 1073741824
execute if score #f floatcalc matches -1073741824 run data modify storage floatcalc: x set value [1,0]

data modify storage floatcalc:core x set from storage floatcalc: x
execute if score #f floatcalc matches -1073741823.. run function floatcalc:core/descale/main
data modify storage floatcalc: x set from storage floatcalc:core x

# なぜかこれがないと動かない
data get storage : {}