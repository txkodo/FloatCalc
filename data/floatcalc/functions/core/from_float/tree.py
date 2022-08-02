def q(i:int):
  return 149 - 8 * i

from pathlib import Path
import shutil

dir = Path(__file__).parent
root = Path().absolute()

def float2str(f:float):
  b = 0
  _f = f

  while (_f % 1) != 0:
    _f *= 10
    b += 1

  if b != 0:
    return f'{f:.{b}f}'
  return str(f)

def power_of_two_str(pow:int):
  if pow < 0:
    return f'{2**pow:.{-pow}f}'
  return str(2**pow)

def funcpath(path:Path):
  return 'floatcalc:' + str(path.with_name(path.stem).relative_to(root/'data/floatcalc/functions')).replace('\\','/')

def _binerayfunc(s:int,e:int,treepath:Path,depth:int):
  if e - s == 1:
    return f"store success storage floatcalc: x[1] int {-q(s)} store result score #f floatcalc run data get storage floatcalc: float {power_of_two_str(q(s))}"
  m = (s + e) // 2

  file = treepath/f'{str(m)}.mcfunction'

  if e - s == 2:
    text = f"""#> {funcpath(file)}
# e:[{-q(s)},{-q(m)}),[{-q(m)},{-q(e)})
# @internal
execute store success storage floatcalc: x[1] int {-q(s)} store result score #f floatcalc run data get storage floatcalc: float {power_of_two_str(q(s))}
execute unless score #f floatcalc matches -2147483520..2147483520 {_binerayfunc(m,e,treepath,depth+1)}"""
  else:
    text = f"""#> {funcpath(file)}
# e:[{-q(s)},{-q(m)}),[{-q(m)},{-q(e)})
# @internal
execute store result score #f floatcalc run data get storage floatcalc: float {power_of_two_str(q(m))}
execute if score #f floatcalc matches -2147483520..2147483520 {_binerayfunc(s,m,treepath,depth+1)}
execute unless score #f floatcalc matches -2147483520..2147483520 {_binerayfunc(m,e,treepath,depth+1)}"""

  file.write_text(text)
  return f'run function {funcpath(file)}'

def binerayfunc(start:int,stop:int):  
  treepath = dir/'tree'
  if treepath.exists(): shutil.rmtree(treepath)
  treepath.mkdir()
  return _binerayfunc(start,stop,treepath,0)

print(binerayfunc(0,32))
