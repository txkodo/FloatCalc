# [] -> NaN
# [1] -> +Infinity
# [-1] -> -Infinity
# [1,0] -> +0
# [-1,0] -> -0
# [s,e,f] -> s * 2 ^ e * (2 ^ 30 + f)

#>
# @public
#define objective floatcalc
#define storage floatcalc:

#>
# @internal
#define storage floatcalc:core
#define score_holder #x
#define score_holder #y
#define score_holder #s
#define score_holder #e
#define score_holder #f
#define score_holder #0
#define score_holder #x1
#define score_holder #x2
#define score_holder #n1
#define score_holder #n2
#define score_holder #n3
#define score_holder #a
#define score_holder #q
#define score_holder #m
#define score_holder #r


#>
# @internal
#define score_holder #_
#define score_holder #-1
#define score_holder #2
#define score_holder #-2
#define score_holder #4
#define score_holder #2^1
#define score_holder #2^2
#define score_holder #2^3
#define score_holder #2^4
#define score_holder #2^7
#define score_holder #2^8
#define score_holder #2^14
#define score_holder #2^15
#define score_holder #2^16
#define score_holder #2^19
#define score_holder #2^20
#define score_holder #2^25
#define score_holder #2^26
#define score_holder #2^28
#define score_holder #2^29
#define score_holder #-2^31
