#> floatcalc:core/from_float/tree/23
# e:[27,35),[35,43)
# @internal
execute store success storage floatcalc:core x[1] int 27 store result score #f floatcalc run data get storage floatcalc:core float 0.000000007450580596923828125
execute unless score #f floatcalc matches -2147483520..2147483520 store success storage floatcalc:core x[1] int 35 store result score #f floatcalc run data get storage floatcalc:core float 0.00000000002910383045673370361328125