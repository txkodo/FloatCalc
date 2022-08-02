#> floatcalc:core/from_float/tree/30
# e:[75,91),[91,107)
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float 0.0000000000000000000000000004038967834731580443708050254247865495926816947758197784423828125
execute if score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/29
execute unless score #f floatcalc matches -2147483520..2147483520 run function floatcalc:core/from_float/tree/31