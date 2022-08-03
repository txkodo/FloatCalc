#> floatcalc:core/invsqrt/main
# 
# 高速逆平方根を実装しようとしたが未完成(おそらくinvとsqrtを並べて実行したほうが早い)
# 
# @internal

data modify storage floatcalc:core inv._ set value 0b
execute store success storage floatcalc:core inv._ byte 1 if data storage floatcalc:core x[2] run function floatcalc:core/invsqrt/finite
execute if data storage floatcalc:core inv{_:0b} run function floatcalc:core/invsqrt/nonfinite
