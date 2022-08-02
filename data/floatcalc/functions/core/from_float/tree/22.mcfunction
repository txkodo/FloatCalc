#> floatcalc:core/from_float/tree/22
# e:[11,27),[27,43)
# @internal
execute store result score #f floatcalc run data get storage floatcalc:core float 0.000000007450580596923828125
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/21
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/23