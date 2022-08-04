#> floatcalc:api/to_float
# 
# 本データパック用の浮動小数データ(IntArray)をfloatに変換する
# 
# floatcalc:api/from_floatによって逆変換が可能
# 
# @input storage floatcalc: x (IntArray)
# @output storage floatcalc: float (float)
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/to_float/main
data modify storage floatcalc: float set from storage floatcalc:core float