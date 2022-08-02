#> floatcalc:api/abs
# 
# 本データパック用の浮動小数データ(List[int])の絶対値をとる
#
# (x) => |x|
# 
# @input storage floatcalc: x (List[int])
# @output storage floatcalc: x (List[int])
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/abs/main
data modify storage floatcalc: x set from storage floatcalc:core x