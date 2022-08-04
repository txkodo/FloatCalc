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

## from_float

Nbtのfloatの値をこのデータパック用のデータ構造(後述)に変換する

このデータパックではfloatの値を直接計算できないため、このファンクションで変換した値を用いて計算を行う

```mcfunction
# 引数
data modify storage floatcalc: float set ...

# 変換
function floatcalc:api/from_float

# 戻り値
data get storage floatcalc: x
```


## to_float

このデータパック用のデータ構造(後述)をNbtのfloatの値に変換する

計算が終わったらこのファンクションを実行することでfloatの値を得る

```mcfunction
# 引数
data modify storage floatcalc: x set ...

# 変換
function floatcalc:api/to_float

# 戻り値
data get storage floatcalc: float
```


## 二項演算

二つの値を引数に用い一つの結果を返す演算を二項演算という

加減乗除の四則演算が二項演算として実装されている

+ add x + y
+ sub x - y
+ mul x * y
+ div x / y

```mcfunction
# 引数
data modify storage floatcalc: x set ...
data modify storage floatcalc: y set ...

# x + y
function floatcalc:api/add
# x - y
function floatcalc:api/sub
# x * y
function floatcalc:api/mul
# x / y
function floatcalc:api/div

# 戻り値
data get storage floatcalc: x
```

## 単項演算

一つの値を引数に用い一つの結果を返す演算を二項演算という

下記の演算が単項演算として実装されている

+ abs  : xの絶対値 (|x|)
+ inv  : xの逆数 (1/x)
+ neg  : -x
+ sqrt : xの平方根 (√x)

```mcfunction
# 引数
data modify storage floatcalc: x set ...

# |x|
function floatcalc:api/abs
# 1/x
function floatcalc:api/inv
# -x
function floatcalc:api/neg
# √x
function floatcalc:api/sqrt

# 戻り値
data get storage floatcalc: x
```

# 定数
よく使われる小数のデータをあらかじめ定数として用意してある

定数であるため、上書きしないこと

```mcfunction
# NaN
data get storage floatcalc: NAN

# 0
data get storage floatcalc: ZERO

# +Infinity
data get storage floatcalc: INFINITY

# -Infinity
data get storage floatcalc: -INFINITY

# 円周率
data get storage floatcalc: PI
```

# 内部データ
本データパックで使用する計算用データは`IntArray`となる

下記の規則に従ったデータのみを扱う。下記以外の構造のデータが入った時のバリデーションはしていないため注意。

```
[]      : NaN
[1]     : Infinity
[-1]    : -Infinity
[1,0]   : 0
[s,e,f] : s * 2^e * (2^30 + f) 
          | s = {-1,1}, f = [0..2**30)
```

0,Infinity,NaN以外の数値は、符号部1bit + 仮数部31bit + 指数部32bitを持つ。

floatのほうがデータ量が少ないため、floatに変換すると精度が落ちたり、上限/下限値を超えてしまうことがある。

可能な限り内部データのまま計算し、from_float/to_floatの使用回数を抑えることでコマンドの実行数を減らし、精度を保つことができる。

### 数の事前変換
from_floatを使わずに事前に計算用データを計算できる

任意の小数`v`に対し下記条件を満たす`[s,e,f]`の組が計算データの値となる。
```
v = s * 2^e * (2^30 + f) 

v : 変換前の小数
s : 符号 (+1/-1)
e : 指数 [-2^31..2^31)
f : 仮数 [0..2^30)
```

例として`1`を計算用データに変換してみよう

```
1 = 1 * 2^-30 * (2^30 + 0)
```

上記の式を満たすので計算用データは`[1,-30,0]`となる。

### 数値の絞りこみ
内部データの構造を生かし、floatに変換せずに数値を絞り込むこともできる

```mcfunction
execute if data storage namespace x[2] -> 0,Infiniy,NaN以外なら通る

execute if data storage namespace x[1] -> Infiniy,NaN以外なら通る

execute if data storage namespace x[0] -> NaN以外なら通る

execute unless data storage namespace x[0] -> NaNなら通る

execute unless data storage namespace x[2] if data storage namespace x[1] -> 0なら通る

execute unless data storage namespace x[1] if data storage namespace {x:[1]} -> +Infinityなら通る

execute unless data storage namespace x[1] if data storage amespace {x:[-1]} -> -Infinityなら通る

```

# ライセンス

本データパックはMITライセンスを採用しています

以下超要約

> 複製 / 複写 / 変更 / 結合 / 掲載 / 頒布 / サブライセンス / 販売 全部OK
> 
> その代わり責任は負わないよ
>
> 改変したときは、LICENCEファイルの ` 2022 @txkodo ` の一行上に同じように日付と名前を書いてね

# さいごに
計算結果の照合はしているつもりですが、まだバグが残っているかもしれません

計算結果がおかしかったら、(@txkodo)[https://mobile.twitter.com/txkodo]まで報告お願いします！！！！！

修正できそうだったらプルリクを(殴

他にも欲しい関数あったら教えてください！やれそうなら頑張ってみます


##### まだないけど作りたい関数リスト
+ round
+ floor
+ ceil
+ shift
+ sin
+ cos
+ tan
+ asin
+ acos
+ atan
+ atan2
+ log
+ lg
+ exp
+ pow
