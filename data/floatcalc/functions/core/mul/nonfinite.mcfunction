#> floatcalc:core/mul/nonfinite
# @internal 

# 1で初期化
scoreboard players set #_ floatcalc 1

# Inf
execute unless data storage floatcalc: x[1] run scoreboard players operation #_ floatcalc *= #2 floatcalc
execute unless data storage floatcalc: y[1] run scoreboard players operation #_ floatcalc *= #2 floatcalc

# 0
execute unless data storage floatcalc: x[2] if data storage floatcalc: x[1] run scoreboard players remove #_ floatcalc 2
execute unless data storage floatcalc: y[2] if data storage floatcalc: y[1] run scoreboard players remove #_ floatcalc 2

# Num
execute if data storage floatcalc: x[2] run scoreboard players operation #_ floatcalc *= #2 floatcalc
execute if data storage floatcalc: y[2] run scoreboard players operation #_ floatcalc *= #2 floatcalc

# NaN
execute unless data storage floatcalc: x[0] run scoreboard players set #_ floatcalc 0
execute unless data storage floatcalc: y[0] run scoreboard players set #_ floatcalc 0

execute if score #_ floatcalc matches 4 run function floatcalc:core/mul/infinite
execute if score #_ floatcalc matches ..-1 run data modify storage floatcalc: x set value [1,0]
execute if score #_ floatcalc matches 0 run data modify storage floatcalc: x set value []
