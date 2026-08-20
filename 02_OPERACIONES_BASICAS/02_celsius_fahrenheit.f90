program celsius_fahrenheit
  implicit none
  real(8) :: c, f
  c = 25.0d0
  f = 9.0d0/5.0d0*c + 32.0d0
  print '(A,F8.2)', 'Celsius = ', c
  print '(A,F8.2)', 'Fahrenheit = ', f
end program celsius_fahrenheit
