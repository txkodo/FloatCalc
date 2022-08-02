#> floatcalc:core/from_float/tree/19
# e:[-5,3),[3,11)
# @internal
execute store success storage floatcalc: x[1] int -5 store result score #f floatcalc run data get storage floatcalc: float 32
execute unless score #f floatcalc matches -2147483520..2147483520 store success storage floatcalc: x[1] int 3 store result score #f floatcalc run data get storage floatcalc: float 0.125