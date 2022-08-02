#> floatcalc:core/scale/main
# 
# けち表現の指数を強制的に合わせる
# 
# 指定する指数は元の数値の指数より大きくなければならない
#
# fが負数になる可能性あり
#
# @input storage floatcalc:core x (List[int])
# @input score #e floatcalc
# @output storage floatcalc:core x (List[int])
# @internal

execute store result score #f floatcalc run data get storage floatcalc:core x[2]
scoreboard players add #f floatcalc 1073741824

execute store result score #x1 floatcalc run data get storage floatcalc:core x[1]
execute store result score #_ floatcalc store result storage floatcalc:core x[1] int 1 run scoreboard players get #e floatcalc
scoreboard players operation #_ floatcalc -= #x1 floatcalc

# e [0,32) -> [0,16)
execute if score #_ floatcalc matches 16.. run function floatcalc:core/scale/scale/16
# e [0,16) -> [0,8)
execute if score #_ floatcalc matches 8.. run function floatcalc:core/scale/scale/8
# e [0,8) -> [0,4)
execute if score #_ floatcalc matches 4.. run function floatcalc:core/scale/scale/4
# e [0,4) -> [0,2)
execute if score #_ floatcalc matches 2.. run function floatcalc:core/scale/scale/2
# e [0,2) -> [0,1)
execute if score #_ floatcalc matches 1.. run function floatcalc:core/scale/scale/1

scoreboard players remove #f floatcalc 1073741824
execute store result storage floatcalc:core x[2] int 1 run scoreboard players get #f floatcalc