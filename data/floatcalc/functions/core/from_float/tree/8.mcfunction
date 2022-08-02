#> floatcalc:core/from_float/tree/8
# e:[-149,-85),[-85,-21)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 38685626227668133590597632
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/4
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/12