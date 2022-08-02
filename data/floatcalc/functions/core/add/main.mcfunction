#> floatcalc:core/add/main
# @internal

data modify storage floatcalc:core _ set value 0b
execute store success storage floatcalc:core _ byte 1 if data storage floatcalc:core x[2] if data storage floatcalc:core y[2] run function floatcalc:core/add/finite
execute if data storage floatcalc:core {_:0b} run function floatcalc:core/add/nonfinite
