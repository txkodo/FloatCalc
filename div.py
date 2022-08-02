
from math import log
from random import randint


def inv(f:int):
  assert 2**30 <= f < 2**31

  _f = f

  a = 2**30 // (f // 2 ** 15 + 1) * 2 ** 15

  assert 2**29 <= a < 2**30

  b = a
  b -= 2**30
  f -= 2**30
  e = b + f + (b//2**15) * (f//2**15) + ((f//2**15) * (b%2**15) // 2**15) + ((b//2**15) * (f%2**15) // 2**15)

  a *= 2

  if e != 0:
    a -= a // (2 ** 30 // e)


  assert 2**30 <= a < 2**31
  return abs(1 - a * _f / 2 ** 61)

c = 1000000
i = 0
for _ in range(c):
  a = inv(randint(2**30,2**31-1))
  i += log(a,10)
print(f'平均誤差(log): {i/c}')

# print(inv(2**30 + 429496704))
