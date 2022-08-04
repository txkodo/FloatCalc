#> floatcalc:core/from_float/main
# @internal

data remove storage floatcalc:core x

# +Infinity
execute if data storage floatcalc:core {float: +1.0e39f} run data modify storage floatcalc:core x set value [I;1]

# -Infinity
execute if data storage floatcalc:core {float: -1.0e39f} run data modify storage floatcalc:core x set value [I;-1]

# +0
execute if data storage floatcalc:core {float: 0f} run data modify storage floatcalc:core x set value [I;1,0]

# NaN
execute store result score #e floatcalc run data get storage floatcalc:core float 713623846352979940529142984724747568191373312
execute if score #e floatcalc matches 0 unless data storage floatcalc:core {float: 0.0f} run data modify storage floatcalc:core x set value [I;]

# 正規化/非正規化数
execute unless data storage floatcalc:core x run function floatcalc:core/from_float/finite
