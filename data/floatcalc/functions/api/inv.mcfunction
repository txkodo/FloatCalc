#> floatcalc:api/inv
# 
# 本データパック用の浮動小数データ(List[int])の逆数を得る
#
# x - y
# 
# @input storage floatcalc: x (List[int])
# @output storage floatcalc: x (List[int])
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/inv/main
data modify storage floatcalc: x set from storage floatcalc:core x