#> floatcalc:core/from_float/tree/10
# e:[-85,-69),[-69,-53)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 590295810358705651712
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/9
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/11