# data modify storage floatcalc:test x set value 0f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value 1f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value -1f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value +1.0e38f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value -1.0e38f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value +1.5e-45f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value -1.5e-45f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set from storage floatcalc:core NaNf
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value 0.01f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value 1f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value 100f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value -0.01f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value -1f
# function floatcalc:test/sqrt.fast.each
# data modify storage floatcalc:test x set value -100f
# function floatcalc:test/sqrt.fast.each

data modify storage floatcalc:test x set value 0f
function floatcalc:test/sqrt.fast.each
data modify storage floatcalc:test x set value 1f
function floatcalc:test/sqrt.fast.each
data modify storage floatcalc:test x set value 2f
function floatcalc:test/sqrt.fast.each
data modify storage floatcalc:test x set value 3f
function floatcalc:test/sqrt.fast.each
data modify storage floatcalc:test x set value 4f
function floatcalc:test/sqrt.fast.each
data modify storage floatcalc:test x set value 5f
function floatcalc:test/sqrt.fast.each