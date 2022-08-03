#> floatcalc:core/sqrt.fast/main
# @internal

execute store result storage floatcalc:core sqrt.sign int 1 run data get storage floatcalc:core x[0]
execute if data storage floatcalc:core sqrt{sign:1} if data storage floatcalc:core x[2] run function floatcalc:core/sqrt.fast/finite
execute if data storage floatcalc:core sqrt{sign:-1} run data modify storage floatcalc:core x set value []