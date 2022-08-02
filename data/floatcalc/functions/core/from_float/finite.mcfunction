#> floatcalc:core/from_float/finite
# @internal

data modify storage floatcalc: x set value [1,0,0]

function floatcalc:core/from_float/tree/16
execute if score #f floatcalc matches ..-1 store success storage floatcalc: x[0] int -1 run scoreboard players operation #f floatcalc *= #-1 floatcalc
execute store result score #e floatcalc run data get storage floatcalc: x[1]

# execute if score #f floatcalc matches ..8388607 run function floatcalc:core/from_float/finite/unnormalized

execute if score #f floatcalc matches ..32767 run function floatcalc:core/from_float/finite/16
execute if score #f floatcalc matches ..8388607 run function floatcalc:core/from_float/finite/8
execute if score #f floatcalc matches ..134217720 run function floatcalc:core/from_float/finite/4
execute if score #f floatcalc matches ..536870880 run function floatcalc:core/from_float/finite/2
execute if score #f floatcalc matches ..1073741760 run function floatcalc:core/from_float/finite/1

execute store result storage floatcalc: x[1] int 1 run scoreboard players get #e floatcalc
scoreboard players remove #f floatcalc 1073741824
execute store result storage floatcalc: x[2] int 1 run scoreboard players get #f floatcalc
