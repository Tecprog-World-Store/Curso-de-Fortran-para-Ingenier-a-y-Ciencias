program vectores
  implicit none
  real(8), dimension(5) :: q
  q = [2.5d0, 3.1d0, 4.2d0, 5.6d0, 6.4d0]
  print '(A,F8.3)', 'Suma = ', sum(q)
  print '(A,F8.3)', 'Media = ', sum(q)/size(q)
  print '(A,F8.3)', 'Minimo = ', minval(q)
  print '(A,F8.3)', 'Maximo = ', maxval(q)
end program vectores
