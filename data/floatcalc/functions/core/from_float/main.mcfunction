#> floatcalc:core/from_float/main
# @internal

data remove storage floatcalc: x

# +Infinity
execute if data storage floatcalc: {float: +1.0e39f} run data modify storage floatcalc: x set value [1]

# -Infinity
execute if data storage floatcalc: {float: -1.0e39f} run data modify storage floatcalc: x set value [-1]

# +0
execute if data storage floatcalc: {float: 0f} run data modify storage floatcalc: x set value [1,0]

# NaN
execute store result score #e floatcalc run data get storage floatcalc: float 713623846352979940529142984724747568191373312
execute if score #e floatcalc matches 0 unless data storage floatcalc: {float: 0.0f} run data modify storage floatcalc: x set value []

# 正規化/非正規化数
execute unless data storage floatcalc: x run function floatcalc:core/from_float/finite
