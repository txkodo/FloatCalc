#> floatcalc:api/from_float
# 
# Nbtのfloatを本データパック用の浮動小数データ(List[int])に変換する
# 
# floatcalc:api/to_floatによって逆変換が可能
# 
# @input storage floatcalc: float (float)
# @output storage floatcalc: x (List[int])
# @api

data modify storage floatcalc:core float set from storage floatcalc: float
function floatcalc:core/from_float/main
data modify storage floatcalc: x set from storage floatcalc:core x