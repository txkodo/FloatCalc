data modify storage floatcalc:test x set value 0f
function floatcalc:test/inv

data modify storage floatcalc:test x set value 1f
function floatcalc:test/inv

data modify storage floatcalc:test x set value -1f
function floatcalc:test/inv

data modify storage floatcalc:test x set value +1.0e39f
function floatcalc:test/inv

data modify storage floatcalc:test x set value -1.0e39f
function floatcalc:test/inv

data modify storage floatcalc:test x set from storage floatcalc:core NaNf
function floatcalc:test/inv


data modify storage floatcalc:test x set value 0.7f
function floatcalc:test/inv

data modify storage floatcalc:test x set value 0.6f
function floatcalc:test/inv

data modify storage floatcalc:test x set value 0.5f
function floatcalc:test/inv

data modify storage floatcalc:test x set value 0.4f
function floatcalc:test/inv

data modify storage floatcalc:test x set value 2f
function floatcalc:test/inv

data modify storage floatcalc:test x set value 8f
function floatcalc:test/inv

data modify storage floatcalc:test x set value 64f
function floatcalc:test/inv
