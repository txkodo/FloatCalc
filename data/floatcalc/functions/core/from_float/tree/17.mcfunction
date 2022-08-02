#> floatcalc:core/from_float/tree/17
# e:[-21,-13),[-13,-5)
# @internal
execute store success storage floatcalc:core x[1] int -21 store result score #f floatcalc run data get storage floatcalc:core float 2097152
execute unless score #f floatcalc matches -2147483520..2147483520 store success storage floatcalc:core x[1] int -13 store result score #f floatcalc run data get storage floatcalc:core float 8192