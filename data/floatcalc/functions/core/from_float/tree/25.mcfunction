#> floatcalc:core/from_float/tree/25
# e:[43,51),[51,59)
# @internal
execute store success storage floatcalc: x[1] int 43 store result score #f floatcalc run data get storage floatcalc: float 0.0000000000001136868377216160297393798828125
execute unless score #f floatcalc matches -2147483520..2147483520 store success storage floatcalc: x[1] int 51 store result score #f floatcalc run data get storage floatcalc: float 0.000000000000000444089209850062616169452667236328125