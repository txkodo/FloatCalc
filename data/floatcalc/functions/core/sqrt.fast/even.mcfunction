#> floatcalc:core/sqrt.fast/even
# @internal

execute store result score #a floatcalc run data get storage floatcalc:core x[2]
execute store result score #m floatcalc store result score #q floatcalc store result score #n1 floatcalc store result score #n2 floatcalc store result score #n3 floatcalc run scoreboard players add #a floatcalc 1073741824

scoreboard players operation #n1 floatcalc /= #2^7 floatcalc
scoreboard players operation #n2 floatcalc /= #2^19 floatcalc
scoreboard players operation #n3 floatcalc /= #2^25 floatcalc
scoreboard players operation #a floatcalc /= #2^28 floatcalc

scoreboard players add #a floatcalc 1

scoreboard players operation #n3 floatcalc /= #a floatcalc
scoreboard players operation #a floatcalc *= #2^1 floatcalc
scoreboard players operation #a floatcalc += #n3 floatcalc

scoreboard players operation #n2 floatcalc /= #a floatcalc
scoreboard players operation #a floatcalc *= #2^3 floatcalc
scoreboard players operation #a floatcalc += #n2 floatcalc

scoreboard players operation #n1 floatcalc /= #a floatcalc
scoreboard players operation #a floatcalc *= #2^7 floatcalc
scoreboard players operation #a floatcalc += #n1 floatcalc

scoreboard players operation #a floatcalc *= #2^14 floatcalc
