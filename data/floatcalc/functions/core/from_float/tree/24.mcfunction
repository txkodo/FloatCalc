#> floatcalc:core/from_float/tree/24
# e:[-21,43),[43,107)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 0.0000000000001136868377216160297393798828125
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/20
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/28