

from math import atan, cos, log, log2, pi, sin
from random import randint


def sincos(i:int):
  assert 0 <= i < 2**31

  t = i/2**31

  x = 2**29
  y = 2**29

  i -= 1686629713
  l = [
    # 1686629713,
    995675659,
    526087673,
    267050317,
    134043374,
    67087031,
    33551702,
    16776875,
    8388565,
    4194299,
    2097151,
    1048576,
    524288,
    262144,
    131072,
    65536
  ]

  for j,s in enumerate(l):
    xx = x
    yy = y
    xx //= 2**(j+1)
    yy //= 2**(j+1)
    if i < 0:
      i += s
      x -= yy
      y += xx
    else:
      i -= s
      x += yy
      y -= xx

  print(t/pi*180)

  # print(sin(t) - x/1.646760258/2**29)
  # print(cos(t) - y/1.646760258/2**29)

# for i in range(16):
#   t = atan(1/2**i)*2**31
#   print(t)

# for _ in range(100):
#   sincos(randint(0,2**31-1))



def isin(x:int):
  assert 0 <= x < 2**30
  t = pi/2 * x/2**30

  xh = x // 2**15
  x2 = xh
  xt = x % 2**15
  xtt = xt
  xtt *= x2
  xtt //= 2**15
  x2 *= x2
  x2 += xtt
  x2 += xtt

  x2h = x2 // 2**15
  x2t = x2 % 2**15

  r = -4652625
  r //= 2**8
  r *= x2 // 2**22

  r += 85291977
  r //= 2**12
  r *= x2 // 2**18

  r -= 693522166
  rh = r
  rt = r
  rh //= 2**15
  rt %= 2**15

  r = x2t
  r *= rh
  rt *= x2h
  r += rt
  r //= 2**15
  rh *= x2h
  r += rh

  r += 612882181
  rh = r
  rt = r
  rh //= 2**15
  rt %= 2**15

  r = xt
  r *= rh
  rt *= xh
  r += rt
  r //= 2**15
  rh *= xh
  r += rh
  r += x

  return abs(sin(t) - r/2**30)


t = 0
c = 100000
for _ in range(c):
  t += isin(randint(0,2**30))

print(t/c)


# print(1686624005-2**30)

# -0.1666666664
# +0.0083333315
# -0.0001984090
# +0.0000027526
# -0.0000000239


# a1 = 1.570791011
# a3 = -0.6458928493
# a5 = 0.0794343442
# a7 = -0.004333095

# print(a1*2**30)
# print(a3*2**30)
# print(a5*2**30)
# print(a7*2**30)

# print(pi/4)
# print((pi/4)**3)
