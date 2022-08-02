#> floatcalc:core/div/main
# @internal

# 逆数とって乗算
data modify storage floatcalc:core z set from storage floatcalc:core x
data modify storage floatcalc:core x set from storage floatcalc:core y
function floatcalc:core/inv/main
data modify storage floatcalc:core y set from storage floatcalc:core z
function floatcalc:core/mul/main
