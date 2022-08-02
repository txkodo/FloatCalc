data modify storage floatcalc:test x set value 1f
data modify storage floatcalc:test y set value 1f
function floatcalc:test/add

data modify storage floatcalc:test x set value 1f
data modify storage floatcalc:test y set value -1f
function floatcalc:test/add

data modify storage floatcalc:test x set value 1f
data modify storage floatcalc:test y set value 100f
function floatcalc:test/add

data modify storage floatcalc:test x set value 1f
data modify storage floatcalc:test y set value -100f
function floatcalc:test/add

data modify storage floatcalc:test x set value 10000000000f
data modify storage floatcalc:test y set value 10000000000f
function floatcalc:test/add

data modify storage floatcalc:test x set value 1f
data modify storage floatcalc:test y set value +1.0e38f
function floatcalc:test/add

data modify storage floatcalc:test x set value 1f
data modify storage floatcalc:test y set value +1.5e-45f
function floatcalc:test/add
