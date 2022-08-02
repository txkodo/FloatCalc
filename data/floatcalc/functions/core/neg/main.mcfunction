#> floatcalc:core/neg/main
# @internal

# 符号を反転
# NaNの場合は両方とも失敗するので問題ない
execute store result score #_ floatcalc run data get storage floatcalc:core x[0]
execute store result storage floatcalc:core x[0] int 1 run scoreboard players operation #_ floatcalc *= #-1 floatcalc