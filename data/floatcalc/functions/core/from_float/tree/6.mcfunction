#> floatcalc:core/from_float/tree/6
# e:[-117,-101),[-101,-85)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 2535301200456458802993406410752
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/5
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/7