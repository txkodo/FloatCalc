#> floatcalc:core/add/finite
# @internal

data modify storage floatcalc:core x set from storage floatcalc: x
data modify storage floatcalc:core y set from storage floatcalc: y

# e := max(e1, e2)
execute store result score #_ floatcalc run data get storage floatcalc: x[1]
execute store result score #e floatcalc run data get storage floatcalc: y[1]
execute if score #e floatcalc < #_ floatcalc run function floatcalc:core/add/switch
# x <= y なので符号はyと同じ

# x,y の指数を合わせる
function floatcalc:core/scale/main

# tellraw @a {"storage":"floatcalc:core","nbt":"x"}
# tellraw @a {"storage":"floatcalc:core","nbt":"y"}

data modify storage floatcalc:core a set value 0b
execute store success storage floatcalc:core a byte 1 unless score #f floatcalc matches -1073741824 run function floatcalc:core/add/nonzero
execute if data storage floatcalc:core {a:0b} run data modify storage floatcalc: x set from storage floatcalc:core y
