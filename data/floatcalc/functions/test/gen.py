
from itertools import product


text = ""

for i,j in product([
  'value 0f',
  'value 1f',
  'value -1f',
  'value +1.0e39f',
  'value -1.0e39f',
  'from storage floatcalc:core NaNf'
  ], repeat=2):
  text += f"""data modify storage floatcalc:test x set {i}
data modify storage floatcalc:test y set {j}
function floatcalc:test/mul

"""

print(text)