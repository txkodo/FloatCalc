#> floatcalc:api/div
# 
# 本データパック用の浮動小数データ(List[int])どうしを除算する
# 
# @input storage floatcalc: x (List[int])
# @input storage floatcalc: y (List[int])
# @output storage floatcalc: x (List[int])
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
data modify storage floatcalc:core y set from storage floatcalc: y
function floatcalc:core/div/main
data modify storage floatcalc: x set from storage floatcalc:core x