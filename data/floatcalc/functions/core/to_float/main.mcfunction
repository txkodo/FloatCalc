#> floatcalc:core/to_float/main
# @internal

# +-Infinity +-0 NaN
execute unless data storage floatcalc: x[2] run function floatcalc:core/to_float/nonfinite

# 正規化/非正規化数
execute if data storage floatcalc: x[2] run function floatcalc:core/to_float/finite
