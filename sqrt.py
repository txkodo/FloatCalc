
from math import floor, log


def tofloat(e:int,f:int):
 return 2 ** e * (2 ** 30 + f)


def fromfloat(f:float):
  e = floor(log(f,2))
  e -= 30
  v = int(f/2**e)
  assert 2**30 <= v < 2**31
  return (e,v-2**30)

class Int:
  def __init__(self,value) -> None:
    self._v = 0
    self.v = value
  
  @property
  def v(self) -> int:
    return self._v
  
  @v.setter
  def v(self,value):
    assert -2**31 <= value < 2**31
    self._v = value


sigma = 0.043035666028
base = 2**30

# def mylog(e:int,m:int):
#   i = e * base + m

#   v = 2 ** e * (base + m)
#   print(1.5 * ( - 30 - sigma) * base)
#   print(133403066665%2**30)
#   print(133403066665//2**30)

#   j = -0.5 * i + 1.5 * ( - 30 - sigma) * base

#   ff = j // base
#   n = j % base

#   w = 2 ** ff * (base + n)

#   print(v)
#   print(1/w**2)

# mylog(7,0)

# def mylog(e:int,m:int):
#   ee = e - 30

#   ff = -ee//2
#   n = -m/2 - 69313791

#   if (ee % 2):
#     n += 2**29

#   if n < 0:
#     ff -= 1
#     n += base

#   w = 2 ** ff * (base + n) / base
#   v = 2 ** ee * (base + m) / base
#   print(v)
#   print(1/w**2)
#   return (ff + 30,m)

# mylog(-10,0)


def mylog(e:int,m:int):
  f = -46 - e//2
  n = 1004428033 - m//2
  if e % 2:
    n -= 2**29
    if n < 0:
      n += base
      f -= 1
      print(-93)
    else:
      print(-91)
  else:
    print(-92)
    # xt = 2**9+m//2**21
    # xb = m%2**21
    # yt = 2**9+n//2**21
    # yb = n%2**21

    # k = 2**30
    # k -= xt * xt * yt * 2
    # k -= xb + yb // 2

    # print(n * k // 2**30)

    # n += n * k // 2**30
    w = base + n
    v = base + m

    vv = v // 2 ** 21

    print(w*w*v*2**-92)
    ww = w // 2 ** 21
    t = 2 ** 29 - vv * ww * ww
    w += (w // 2**15) * (t // 2**15)
    print(w*w*v*2**-92)

mylog(-20,21461849)

