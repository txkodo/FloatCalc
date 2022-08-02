#> floatcalc:core/nan
# @internal
scoreboard players set #0 floatcalc 0
summon item_frame ~ ~ ~ {UUID:[I;0,0,0,0],Item: {id: "minecraft:apple", Count: 1b}}

# NaNd
item modify entity 0-0-0-0-0 container.0 floatcalc:nan
data modify storage floatcalc:core NaNd set from entity 0-0-0-0-0 Item.tag.AttributeModifiers[0].Amount

# NaNf
data modify entity 0-0-0-0-0 FallDistance set from storage floatcalc:core NaNd
data modify storage floatcalc:core NaNf set from entity 0-0-0-0-0 FallDistance

kill 0-0-0-0-0