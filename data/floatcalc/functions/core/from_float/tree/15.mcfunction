#> floatcalc:core/from_float/tree/15
# e:[-37,-29),[-29,-21)
# @internal
execute store success storage floatcalc:core x[1] int -37 store result score #f floatcalc run data get storage floatcalc:core float 137438953472
execute unless score #f floatcalc matches -2147483520..2147483520 store success storage floatcalc:core x[1] int -29 store result score #f floatcalc run data get storage floatcalc:core float 536870912