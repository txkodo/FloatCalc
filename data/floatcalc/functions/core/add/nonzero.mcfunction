#> floatcalc:core/add/nonzero
# @internal

execute store result score #x floatcalc run data get storage floatcalc:core tx[0]
execute store result score #y floatcalc run data get storage floatcalc:core ty[0]

execute if score #x floatcalc = #y floatcalc run function floatcalc:core/add/add
execute unless score #x floatcalc = #y floatcalc run function floatcalc:core/add/sub
