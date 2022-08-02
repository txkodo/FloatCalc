#> floatcalc:core/from_float/tree/18
# e:[-21,-5),[-5,11)
# @internal
execute store result score #f floatcalc run data get storage floatcalc:core float 32
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/17
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/19