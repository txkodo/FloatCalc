#> floatcalc:core/from_float/tree/21
# e:[11,19),[19,27)
# @internal
execute store success storage floatcalc:core x[1] int 11 store result score #f floatcalc run data get storage floatcalc:core float 0.00048828125
execute unless score #f floatcalc matches -2147483520..2147483520 store success storage floatcalc:core x[1] int 19 store result score #f floatcalc run data get storage floatcalc:core float 0.0000019073486328125