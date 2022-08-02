#> floatcalc:core/to_float/finite
# @internal

execute store result score #s floatcalc run data get storage floatcalc:core x[0]
execute store result score #e floatcalc run data get storage floatcalc:core x[1]
execute store result score #f floatcalc run data get storage floatcalc:core x[2]

scoreboard players operation #f floatcalc /= #2^7 floatcalc
# けち表現をやめる
scoreboard players add #f floatcalc 8388608
scoreboard players add #e floatcalc 7

# v = 2 ^ e * f

# 正規化数 e [-149(=-126-23), 104(=127-23)]
# 非正規化数 e [-172(=-149-23), -149)

# 0
execute if score #e floatcalc matches ..-180 run data modify storage floatcalc:core float set value 0f

# +-Infinity
execute if score #e floatcalc matches 105.. run function floatcalc:core/to_float/inf

# 非正規化数 / 正規化数
execute if score #e floatcalc matches -179..104 run function floatcalc:core/to_float/normalized
