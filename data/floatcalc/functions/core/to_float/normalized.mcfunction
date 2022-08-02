#> floatcalc:core/to_float/normalized
# @internal

# 正規化数 e [-149(=-126-23), 104(=127-23)]

# 非正規化する (指数を-149にそろえる)
execute if score #e floatcalc matches -179..-150 run function floatcalc:core/to_float/unnormalize

scoreboard players add #e floatcalc 5
scoreboard players operation #t floatcalc = #e floatcalc
scoreboard players operation #t floatcalc %= #2^3 floatcalc

# v = 2 ^ (e - 5) * f

# e: -144..109
# e//8: -18..13

# 分岐数を減らすため、指数部下3桁はあらかじめそろえておく
execute if score #t floatcalc matches 4.. run function floatcalc:core/to_float/finite/4
execute if score #t floatcalc matches 2.. run function floatcalc:core/to_float/finite/2
execute if score #t floatcalc matches 1.. run function floatcalc:core/to_float/finite/1

# 符号を反映
execute if score #s floatcalc matches -1 run scoreboard players operation #f floatcalc *= #-1 floatcalc

# 指数部8飛ばしで二分探索
function floatcalc:core/to_float/tree/16
