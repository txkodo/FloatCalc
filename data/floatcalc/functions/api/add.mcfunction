#> floatcalc:api/add
# 
# 本データパック用の浮動小数データ(IntArray)どうしを加算する
# 
# @input storage floatcalc: x (IntArray)
# @input storage floatcalc: y (IntArray)
# @output storage floatcalc: x (IntArray)
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
data modify storage floatcalc:core y set from storage floatcalc: y
function floatcalc:core/add/main
data modify storage floatcalc: x set from storage floatcalc:core x