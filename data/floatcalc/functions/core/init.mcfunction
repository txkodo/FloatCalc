#> floatcalc:core/init
# @internal

tellraw @a "floatcalc is successfully installed !"
execute unless data storage floatcalc:core {version:"develop"} run data modify storage floatcalc:core version set value "1.0"

scoreboard objectives remove floatcalc
scoreboard objectives add floatcalc dummy

scoreboard players set #0 floatcalc 0
scoreboard players set #-1 floatcalc -1
scoreboard players set #2 floatcalc 2
scoreboard players set #-2 floatcalc -2
scoreboard players set #4 floatcalc 4
scoreboard players set #2^1 floatcalc 2
scoreboard players set #2^2 floatcalc 4
scoreboard players set #2^3 floatcalc 8
scoreboard players set #2^4 floatcalc 16
scoreboard players set #2^7 floatcalc 128
scoreboard players set #2^8 floatcalc 256
scoreboard players set #2^14 floatcalc 16384
scoreboard players set #2^15 floatcalc 32768
scoreboard players set #2^16 floatcalc 65536
scoreboard players set #2^19 floatcalc 524288
scoreboard players set #2^20 floatcalc 1048576
scoreboard players set #2^25 floatcalc 33554432
scoreboard players set #2^26 floatcalc 67108864
scoreboard players set #2^28 floatcalc 268435456
scoreboard players set #2^29 floatcalc 536870912
scoreboard players set #-2^31 floatcalc -2147483648

function floatcalc:core/nan

data modify storage floatcalc: NAN set value [I;]
data modify storage floatcalc: ZERO set value [I;1,0]
data modify storage floatcalc: INFINITY set value [I;1]
data modify storage floatcalc: -INFINITY set value [I;-1]
data modify storage floatcalc: PI set value [I;1,-29,612887889]