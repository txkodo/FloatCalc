#> floatcalc:core/sub/main
# @internal

# 第二オペランドの符号を反転させて加算
# NaNの場合は両方とも失敗するので問題ない
execute store result score #_ floatcalc run data get storage floatcalc:core y[0]
execute store result storage floatcalc:core y[0] int 1 run scoreboard players operation #_ floatcalc *= #-1 floatcalc

function floatcalc:core/add/main
