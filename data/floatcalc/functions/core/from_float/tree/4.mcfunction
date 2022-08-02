#> floatcalc:core/from_float/tree/4
# e:[-149,-117),[-117,-85)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 166153499473114484112975882535043072
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/2
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/6