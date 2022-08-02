#> floatcalc:core/from_float/tree/2
# e:[-149,-133),[-133,-117)
# @internal
execute store result score #f floatcalc run data get storage floatcalc:core float 10889035741470030830827987437816582766592
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/1
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/3