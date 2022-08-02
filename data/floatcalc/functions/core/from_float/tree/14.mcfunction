#> floatcalc:core/from_float/tree/14
# e:[-53,-37),[-37,-21)
# @internal
execute store result score #f floatcalc run data get storage floatcalc:core float 137438953472
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/13
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/15