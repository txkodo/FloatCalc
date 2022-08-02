#> floatcalc:core/abs/main
# @internal

# 符号を1にする
# NaNの場合は[0]がないため失敗する
data modify storage floatcalc:core x[0] set value 1