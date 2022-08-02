
from itertools import product
from pathlib import Path


text = ""

for i,j in product([
  'value 1f',
  'value -1f',
  'value 100f',
  'value -100f',
  'value +1.0e38f',
  'value -1.0e38f',
  'value +1.5e-45f',
  'value -1.5e-45f',
  ], repeat=2):
  text += f"""data modify storage floatcalc:test x set {i}
data modify storage floatcalc:test y set {j}
function floatcalc:test/add

"""

(Path(__file__).parent/'add.finites.mcfunction').write_text(text)