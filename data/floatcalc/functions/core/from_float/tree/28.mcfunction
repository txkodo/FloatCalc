#> floatcalc:core/from_float/tree/28
# e:[43,75),[75,107)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 0.000000000000000000000026469779601696885595885078146238811314105987548828125
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/26
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/30