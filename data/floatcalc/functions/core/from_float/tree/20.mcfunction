#> floatcalc:core/from_float/tree/20
# e:[-21,11),[11,43)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 0.00048828125
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/18
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/22