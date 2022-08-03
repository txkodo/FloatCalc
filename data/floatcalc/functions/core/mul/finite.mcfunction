#> floatcalc:core/mul/finite
# @internal

# 符号処理 s1 * s2
execute store result score #x1 floatcalc run data get storage floatcalc:core x[0]
execute store result score #x2 floatcalc run data get storage floatcalc:core y[0]
execute store result storage floatcalc:core x[0] int 1 run scoreboard players operation #x1 floatcalc *= #x2 floatcalc

# 仮数処理 f1 + f2 + (f1*2^-15) * (f2*2^-15) + ((f1*2^-15) * (f2%2^15) + (f2*2^-15) * (f1%2^15)) * 2^-15
execute store result score #f floatcalc store result score #y1 floatcalc store result score #x1 floatcalc run data get storage floatcalc:core x[2]
execute store result score #y2 floatcalc store result score #x2 floatcalc run data get storage floatcalc:core y[2]

scoreboard players operation #f floatcalc += #x2 floatcalc

scoreboard players operation #x1 floatcalc /= #2^15 floatcalc
scoreboard players operation #x2 floatcalc /= #2^15 floatcalc

scoreboard players operation #y1 floatcalc %= #2^15 floatcalc
scoreboard players operation #y2 floatcalc %= #2^15 floatcalc

scoreboard players operation #y1 floatcalc *= #x2 floatcalc
scoreboard players operation #y2 floatcalc *= #x1 floatcalc

scoreboard players operation #y1 floatcalc += #x1 floatcalc
scoreboard players operation #y1 floatcalc /= #2^15 floatcalc
scoreboard players operation #f floatcalc += #y1 floatcalc

scoreboard players operation #x1 floatcalc *= #x2 floatcalc

execute store result storage floatcalc:core x[2] int 1 run scoreboard players operation #f floatcalc += #x1 floatcalc

# 繰りあがり
scoreboard players set #_ floatcalc 0
execute unless score #f floatcalc matches 0..1073741823 run function floatcalc:core/mul/carry

# 指数処理 (繰り上がり) + e1 + e2 + 30
execute store result score #x1 floatcalc run data get storage floatcalc:core x[1]
execute store result score #x2 floatcalc run data get storage floatcalc:core y[1]
scoreboard players operation #_ floatcalc += #x1 floatcalc
scoreboard players operation #_ floatcalc += #x2 floatcalc
execute store result storage floatcalc:core x[1] int 1 run scoreboard players add #_ floatcalc 30
