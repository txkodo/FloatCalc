data modify storage floatcalc:test x set value 0f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value 1f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value -1f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value +1.0e38f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value -1.0e38f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value +1.5e-45f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value -1.5e-45f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set from storage floatcalc:core NaNf
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value 0.01f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value 1f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value 100f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value -0.01f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value -1f
  function floatcalc:test/sqrt.each
  data modify storage floatcalc:test x set value -100f
  function floatcalc:test/sqrt.each
  