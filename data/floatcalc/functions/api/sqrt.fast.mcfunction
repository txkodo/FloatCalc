#> floatcalc:api/sqrt.fast
# 
# 本データパック用の浮動小数データ(List[int])の平方根を得る
#
# api/sqrtより有効数字が少ない(二進数15桁)代わりに実行コマンドがちょっと少ない (35コマンド程度)
#
# (x) => √x
# 
# @input storage floatcalc: x (List[int])
# @output storage floatcalc: x (List[int])
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/sqrt.fast/main
data modify storage floatcalc: x set from storage floatcalc:core x