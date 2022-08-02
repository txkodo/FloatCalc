#> floatcalc:core/inv/main
# @internal

# ニュートン・ラプソン法を用いて逆数をとる

data modify storage floatcalc:core d set from storage floatcalc: x

# e := max(e1, e2)
execute store result score #_ floatcalc run data get storage floatcalc: x[1]
execute store result score #e floatcalc run data get storage floatcalc: y[1]
execute if score #e floatcalc < #_ floatcalc run function floatcalc:core/add/switch
# x <= y なので符号はyと同じ

# x,y の指数を合わせる
