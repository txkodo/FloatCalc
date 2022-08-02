#> floatcalc:core/from_float/tree/13
# e:[-53,-45),[-45,-37)
# @internal
execute store success storage floatcalc: x[1] int -53 store result score #f floatcalc run data get storage floatcalc: float 9007199254740992
execute unless score #f floatcalc matches -2147483520..2147483520 store success storage floatcalc: x[1] int -45 store result score #f floatcalc run data get storage floatcalc: float 35184372088832