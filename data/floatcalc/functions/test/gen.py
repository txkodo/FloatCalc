
from itertools import chain, product
from pathlib import Path

def exportBinaryOp(op:str,sign:str):
  text = ""

  nonfinite = product([
    'value 0f',
    'value 1f',
    'value -1f',
    'value +1.0e38f',
    'value -1.0e38f',
    'value +1.5e-45f',
    'value -1.5e-45f',
    'from storage floatcalc:core NaNf'
    ], repeat=2)

  finite = product([
    'value 0.01f',
    'value 1f',
    'value 100f',
    'value -0.01f',
    'value -1f',
    'value -100f',
    ], repeat=2)

  pair = chain(nonfinite,finite)

  for i,j in (pair):
    text += f"""data modify storage floatcalc:test x set {i}
  data modify storage floatcalc:test y set {j}
  function floatcalc:test/{op}.each
  """
  (Path(__file__).parent/f'{op}.mcfunction').write_text(text)

  text = f"""data modify storage floatcalc: float set from storage floatcalc:test y
function floatcalc:api/from_float
data modify storage floatcalc: y set from storage floatcalc: x

data modify storage floatcalc: float set from storage floatcalc:test x
function floatcalc:api/from_float

function floatcalc:api/{op}

function floatcalc:api/to_float
tellraw @s [{{"storage":"floatcalc:test","nbt":"x"}}," {sign} ",{{"storage":"floatcalc:test","nbt":"y"}}," -> ",{{"storage":"floatcalc:","nbt":"float"}}]"""
  (Path(__file__).parent/f'{op}.each.mcfunction').write_text(text)

def exportUnaryOp(op:str,sign:str):
  text = ""

  nonfinite = [
    'value 0f',
    'value 1f',
    'value -1f',
    'value +1.0e38f',
    'value -1.0e38f',
    'value +1.5e-45f',
    'value -1.5e-45f',
    'from storage floatcalc:core NaNf'
    ]

  finite = [
    'value 0.01f',
    'value 1f',
    'value 100f',
    'value -0.01f',
    'value -1f',
    'value -100f',
    ]

  values = chain(nonfinite,finite)

  for i in (values):
    text += f"""data modify storage floatcalc:test x set {i}
  function floatcalc:test/{op}.each
  """
  (Path(__file__).parent/f'{op}.mcfunction').write_text(text)

  text = f"""data modify storage floatcalc: float set from storage floatcalc:test x
function floatcalc:api/from_float

function floatcalc:api/{op}

function floatcalc:api/to_float
tellraw @s ["{sign} ",{{"storage":"floatcalc:test","nbt":"x"}}," -> ",{{"storage":"floatcalc:","nbt":"float"}}]"""
  (Path(__file__).parent/f'{op}.each.mcfunction').write_text(text)


def export_tests():
  binaryOps = [
    ('add','+'),
    ('sub','-'),
    ('mul','*'),
    ('div','/'),
  ]

  unaryOps = [
    ('inv','1 /'),
    ('neg','-'),
    ('abs','abs'),
    ('sqrt','sqrt'),
    ('sqrt.fast','sqrt.fast'),
  ]

  for op,sign in binaryOps:
    exportBinaryOp(op,sign)

  for op,sign in unaryOps:
    exportUnaryOp(op,sign)

export_tests()