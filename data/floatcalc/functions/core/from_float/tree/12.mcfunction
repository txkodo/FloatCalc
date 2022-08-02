#> floatcalc:core/from_float/tree/12
# e:[-85,-53),[-53,-21)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 9007199254740992
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/10
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/14