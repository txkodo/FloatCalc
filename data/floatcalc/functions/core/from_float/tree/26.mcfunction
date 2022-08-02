#> floatcalc:core/from_float/tree/26
# e:[43,59),[59,75)
# @internal
execute store result score #f floatcalc run data get storage floatcalc:core float 0.00000000000000000173472347597680709441192448139190673828125
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/25
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/27