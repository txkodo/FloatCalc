#> floatcalc:api/inv
# 
# 本データパック用の浮動小数データ(IntArray)の逆数を得る
#
# x - y
# 
# @input storage floatcalc: x (IntArray)
# @output storage floatcalc: x (IntArray)
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/inv/main
data modify storage floatcalc: x set from storage floatcalc:core x