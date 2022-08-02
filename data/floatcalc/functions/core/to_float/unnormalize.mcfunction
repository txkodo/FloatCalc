#> floatcalc:core/to_float/unnormalize
# @internal
# [-172, -164) 16
execute if score #e floatcalc matches ..-165 run function floatcalc:core/to_float/scale/16
# [-164, -156) 8
execute if score #e floatcalc matches ..-157 run function floatcalc:core/to_float/scale/8
# [-156, -152) 4
execute if score #e floatcalc matches ..-153 run function floatcalc:core/to_float/scale/4
# [-152, -150) 2
execute if score #e floatcalc matches ..151 run function floatcalc:core/to_float/scale/2
# [-150, -149) 1
execute if score #e floatcalc matches ..-150 run function floatcalc:core/to_float/scale/1
