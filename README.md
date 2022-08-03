# FloatCalc

浮動小数点数計算用データパックライブラリ

Nbtのfloatを特殊な計算用データに変換して計算を行う

+ Minecraft 1.19 (1.17以降なら動くかも)

# Example
例として 100f + 10f を計算する例を以下に示す

```mcfunction

# floatの値xをセット
data modify storage floatcalc: float set value 100f

# floatの値xを計算用データに変換
function floatcalc:api/from_float

# 得られた計算用データxを移動
data modify storage tmp: x set from storage floatcalc: x

# floatの値yをセット
data modify storage floatcalc: float set value 10f

# floatの値yを計算用データに変換
function floatcalc:api/from_float

# 得られた計算用データyを移動
data modify storage tmp: y set from storage floatcalc: x

# 計算用データx,yをセット
data modify storage floatcalc: x set from storage floatcalc: x
data modify storage floatcalc: y set from storage floatcalc: y

# 2つの数値を加算
function floatcalc:api/add

# 得られた計算用データをfloatに変換
function floatcalc:api/to_float

data get storage floatcalc: float -> 110.0f
```

# API


# 内部データ
本データパックで使用する計算用データは`List[Int]`となる

以下に対応を示す
```
[]      : NaN
[1]     : Infinity
[-1]    : -Infinity
[s,0]   : 0
[s,e,f] : s * 2^e * (2^30 + f) 
          | s = {-1,1}, f = [0..2**30)
```

これを使うとfrom_floatを使わずに事前に計算用データを準備できる

例として`1`を計算用データに変換する。

```
1 == 1 * 2^-30 * (2^30 + 0)
```

を満たすので計算用データは`[1,-30,0]`となる。

また、以下のようにすればfloatに変換せずに数値を絞り込むこともできる
```mcfunction
execute if data storage namespace x[2] -> 0,Infiniy,NaN以外なら通る

execute if data storage namespace x[1] -> Infiniy,NaN以外なら通る

execute if data storage namespace x[0] -> NaN以外なら通る

execute unless data storage namespace x[0] -> NaNなら通る

execute unless data storage namespace x[2] if data storage namespace x[1] -> 0なら通る

execute unless data storage namespace x[1] if data storage namespace {x:[1]} -> +Infinityなら通る

execute unless data storage namespace x[1] if data storage amespace {x:[-1]} -> -Infinityなら通る

```

内部データは 符号部1bit + 仮数部31bit + 指数部32bit を持つ
