#> floatcalc:core/from_float/tree/16
# e:[-149,-21),[-21,107)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 2097152
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/8
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/24