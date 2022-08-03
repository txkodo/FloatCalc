from random import randint


# def isqrt_aux(c, n):
#     if c == 0:
#         return 1
#     else:
#       k = (c - 1) // 2
#       a = isqrt_aux(c // 2, n >> 2 * k + 2)
#       print(k,c,n)
#       return (a << k) + (n >> k+2) // a

# def isqrt(n):
#   assert 2**30 < n < 2**31
#   if n == 0:
#       return 0
#   else:
#       a = isqrt_aux(15, n)
#       return a - 1 if n < a * a else a


# def sqrt(n):
#   assert 2**30 < n < 2**31

#   n0 = n << 30
#   n1 = n0 >> 32
#   n2 = n1 >> 16
#   n3 = n2 >> 8
#   n4 = n3 >> 4

#   a = 1
#   a = a + (n4 >> 2) // a
#   a = (a << 1) + (n3 >> 3) // a
#   a =(a << 3) + (n2 >> 5) // a
#   a = (a << 7) + (n1 >> 9) // a
#   a = (a << 15) + (n0 >> 17) // a

#   return a

# for _ in range(100):
#   i = randint(2**30,2**31-1)
#   a = sqrt(i)

#   print(f'{(i << 30) - round(a**2)}' )



def esqrt(n0:int) -> int:
  assert 2**30 <= n0 < 2**31

  q = n0
  m = n0
  a = n0
  n3 = n0
  n2 = n0
  n1 = n0

  print(a)

  n1 //= 2**7
  n2 //= 2**19
  n3 //= 2**25
  a //= 2**28

  a += 1

  n3 //= a
  a *= 2
  a += n3

  print(a)

  n2 //= a
  a *= 8
  a += n2

  print(a)

  n1 //= a
  a *= 128
  a += n1

  print(a)

  q //= a
  m %= a
  m *= 2**8
  q *= 2**8
  r = m
  r //= a

  q += r
  m %= a
  m *= 2**8
  q *= 2**8
  r = m
  r //= a

  q += r
  m %= a
  m *= 2
  m //= a

  q += m

  a *= 2**14
  a += q

  print(a)

  a //= 2

  print(a)

  return a

# for _ in range(100):
#   i = randint(2**30,2**31-1)
#   a = esqrt(i)/2**16

#   print(f'{i - round(a**2)}' )


def osqrt(n0:int) -> int:
  assert 2**30 < n0 < 2**31


  q = n0
  m = n0
  a = n0
  n3 = n0
  n2 = n0
  n1 = n0

  n1 //= 2**8
  n2 //= 2**20
  n3 //= 2**26
  a //= 2**29

  a += 1

  n3 //= a
  a *= 2
  a += n3

  print(n2)
  n2 //= a
  print(n2)
  a *= 8
  print(a)
  a += n2
  print(a)

  n1 //= a
  a *= 128
  a += n1
  print(a)

  q //= a
  m %= a
  m *= 2**8
  q *= 2**8
  r = m
  r //= a

  q += r
  m %= a
  m *= 2**8
  q *= 2**8
  r = m
  r //= a

  q += r
  m %= a
  m *= 2
  m //= a

  q += m

  a *= 2**15
  a += q
  print(a)

  a //= 2

  print(a)

  return a

def _esqrt(n:int):
  assert 2**30 < n < 2**31

  n0 = n << 16
  n1 = n >> 7
  n2 = n >> 19
  n3 = n >> 25
  n4 = n >> 28

  a = 1
  a = (a << 0) + n4 // a
  a = (a << 1) + n3 // a
  a = (a << 3) + n2 // a
  a = (a << 7) + n1 // a
  a = (a << 14) + n0 // a

  return a

def _osqrt(n:int):
  assert 2**30 < n < 2**31

  n0 = n << 16
  n1 = n >> 8
  n2 = n >> 20
  n3 = n >> 26
  n4 = n >> 29

  # a = isqrt_aux(31, n0) k:15
  # a = isqrt_aux(15, n1) k:7
  # a = isqrt_aux(7, n2) k: 3
  # a = isqrt_aux(3, n3) k: 1
  # a = isqrt_aux(1, n4) k:0
  a = 1
  a = (a << 0) + n4 // a
  a = (a << 1) + n3 // a
  a = (a << 3) + n2 // a
  a = (a << 7) + n1 // a
  a = (a << 15) + n0 // a
  return a


def main(e:int,f:int):
  if e % 2:
    r = osqrt(f+2**30)
  else:
    r = esqrt(f+2**30)

  return e // 2 - 15 , r - 2**30

# for _ in range(100):
#   i = randint(2**30,2**31-1)
#   print(f'{i**0.5} {esqrt(i)/2**15}')

print(main(-37,300647680))