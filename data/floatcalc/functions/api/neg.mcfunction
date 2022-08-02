#> floatcalc:api/neg
# 
# 本データパック用の浮動小数データ(List[int])の符号を反転させる
#
# (x) => -x
# 
# @input storage floatcalc: x (List[int])
# @output storage floatcalc: x (List[int])
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/neg/main
data modify storage floatcalc: x set from storage floatcalc:core x