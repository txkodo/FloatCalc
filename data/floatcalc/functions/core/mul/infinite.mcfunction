#> floatcalc:core/mul/infinite
# @internal 


# 符号処理 s1 * s2
execute store result score #x1 floatcalc run data get storage floatcalc: x[0]
execute store result score #x2 floatcalc run data get storage floatcalc: y[0]
data modify storage floatcalc: x set value [0]
execute store result storage floatcalc: x[0] int 1 run scoreboard players operation #x1 floatcalc *= #x2 floatcalc
