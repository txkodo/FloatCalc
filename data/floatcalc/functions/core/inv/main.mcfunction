#> floatcalc:core/inv/main
# @internal

data modify storage floatcalc:core inv._ set value 0b
execute store success storage floatcalc:core inv._ byte 1 if data storage floatcalc:core x[2] run function floatcalc:core/inv/finite
execute if data storage floatcalc:core inv{_:0b} run function floatcalc:core/inv/nonfinite
