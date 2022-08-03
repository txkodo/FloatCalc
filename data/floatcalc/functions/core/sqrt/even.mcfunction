#> floatcalc:core/sqrt/even
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

scoreboard players operation #q floatcalc /= #a floatcalc
scoreboard players operation #m floatcalc %= #a floatcalc
scoreboard players operation #q floatcalc *= #2^8 floatcalc
execute store result score #r floatcalc run scoreboard players operation #m floatcalc *= #2^8 floatcalc
scoreboard players operation #r floatcalc /= #a floatcalc

scoreboard players operation #q floatcalc += #r floatcalc
scoreboard players operation #m floatcalc %= #a floatcalc
scoreboard players operation #q floatcalc *= #2^8 floatcalc
scoreboard players operation #m floatcalc *= #2^8 floatcalc
scoreboard players operation #m floatcalc /= #a floatcalc

scoreboard players operation #q floatcalc += #m floatcalc

scoreboard players operation #a floatcalc *= #2^14 floatcalc
scoreboard players operation #a floatcalc += #q floatcalc

scoreboard players operation #a floatcalc /= #2 floatcalc
scoreboard players operation #a floatcalc -= #-2^31 floatcalc