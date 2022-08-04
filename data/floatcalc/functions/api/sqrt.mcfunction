#> floatcalc:api/sqrt
# 
# 本データパック用の浮動小数データ(IntArray)の平方根を得る
# 
# api/sqrt.fastより有効数字が多い(二進数30桁)代わりに実行コマンドがちょっと多い (50コマンド程度)
# 
# (x) => √x
# 
# @input storage floatcalc: x (IntArray)
# @output storage floatcalc: x (IntArray)
# @api

data modify storage floatcalc:core x set from storage floatcalc: x
function floatcalc:core/sqrt/main
data modify storage floatcalc: x set from storage floatcalc:core x