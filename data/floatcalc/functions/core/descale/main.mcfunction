#> floatcalc:core/descale/main
# 
# fが負数をとらないようにけち表現の指数を調整する
# 
# 指数が元の数値の指数より大きくなる可能性がある
#
# @input storage floatcalc:core x (List[int])
# @output storage floatcalc:core x (List[int])
# @internal

execute store result score #f floatcalc run data get storage floatcalc:core x[2]
scoreboard players add #f floatcalc 1073741824

execute if score #f floatcalc matches ..-1 run function floatcalc:core/descale/invert

execute store result score #e floatcalc run data get storage floatcalc:core x[1]

# e [0,15) -> [15,31)
execute if score #f floatcalc matches ..32767 run function floatcalc:core/descale/scale/16
# e [15,23) -> [23,31)
execute if score #f floatcalc matches ..8388607 run function floatcalc:core/descale/scale/8
# e [23,27) -> [27,31)
execute if score #f floatcalc matches ..134217727 run function floatcalc:core/descale/scale/4
# e [27,29) -> [29,31)
execute if score #f floatcalc matches ..536870911 run function floatcalc:core/descale/scale/2
# e [29,30) -> [30,31)
execute if score #f floatcalc matches ..1073741823 run function floatcalc:core/descale/scale/1

scoreboard players remove #f floatcalc 1073741824
execute store result storage floatcalc:core x[2] int 1 run scoreboard players get #f floatcalc
execute store result storage floatcalc:core x[1] int 1 run scoreboard players get #e floatcalc