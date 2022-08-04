#> floatcalc:api/abs
# 
# 本データパック用の浮動小数データ(IntArray)の絶対値をとる
#
# (x) => |x|
# 
# @input storage floatcalc: x (IntArray)
# @output storage floatcalc: x (IntArray)
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/abs/main
data modify storage floatcalc: x set from storage floatcalc:core x