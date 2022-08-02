#> floatcalc:core/inv/finite
# @internal

# 仮数の逆数を求める
# 普通に割り算した後にニュートン法で近似

execute store result score #ff floatcalc store result score #_ floatcalc store result score #f floatcalc run data get storage floatcalc:core x[2]
scoreboard players add #_ floatcalc 1073741824
scoreboard players operation #_ floatcalc /= #2^15 floatcalc
scoreboard players add #_ floatcalc 1
scoreboard players set #a floatcalc 1073741824
scoreboard players operation #a floatcalc /= #_ floatcalc
execute store result score #b floatcalc run scoreboard players operation #a floatcalc *= #2^15 floatcalc

execute store result score #bb floatcalc store result score #e floatcalc run scoreboard players remove #b floatcalc 1073741824
scoreboard players operation #e floatcalc += #f floatcalc

scoreboard players operation #b floatcalc /= #2^15 floatcalc
scoreboard players operation #f floatcalc /= #2^15 floatcalc

scoreboard players operation #bb floatcalc %= #2^15 floatcalc
scoreboard players operation #bb floatcalc *= #f floatcalc
scoreboard players operation #bb floatcalc /= #2^15 floatcalc

scoreboard players operation #ff floatcalc %= #2^15 floatcalc
scoreboard players operation #ff floatcalc *= #b floatcalc
scoreboard players operation #ff floatcalc /= #2^15 floatcalc

scoreboard players operation #b floatcalc *= #f floatcalc

scoreboard players operation #e floatcalc += #b floatcalc

scoreboard players operation #e floatcalc += #bb floatcalc
scoreboard players operation #e floatcalc += #ff floatcalc

scoreboard players operation #a floatcalc += #a floatcalc

execute unless score #e floatcalc matches 0 run function floatcalc:core/inv/next

scoreboard players remove #a floatcalc 1073741824
execute store result storage floatcalc:core x[2] int 1 run scoreboard players get #a floatcalc

# 指数をそろえる
execute store result score #_ floatcalc run data get storage floatcalc:core x[1]
scoreboard players add #_ floatcalc 61
execute store result storage floatcalc:core x[1] int 1 run scoreboard players operation #_ floatcalc *= #-1 floatcalc
