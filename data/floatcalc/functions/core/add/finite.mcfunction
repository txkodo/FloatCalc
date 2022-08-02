#> floatcalc:core/add/finite
# @internal

data modify storage floatcalc:core tx set from storage floatcalc:core x
data modify storage floatcalc:core ty set from storage floatcalc:core y

# e := max(e1, e2)
execute store result score #_ floatcalc run data get storage floatcalc:core x[1]
execute store result score #e floatcalc run data get storage floatcalc:core y[1]
execute if score #e floatcalc < #_ floatcalc run function floatcalc:core/add/switch
# x <= y なので符号はyと同じ

data modify storage floatcalc:core x set from storage floatcalc:core tx
# x,y の指数を合わせる
function floatcalc:core/scale/main
data modify storage floatcalc:core tx set from storage floatcalc:core x

data modify storage floatcalc:core a set value 0b
execute store success storage floatcalc:core a byte 1 unless score #f floatcalc matches -1073741824 run function floatcalc:core/add/nonzero
execute if data storage floatcalc:core {a:0b} run data modify storage floatcalc:core x set from storage floatcalc:core ty
