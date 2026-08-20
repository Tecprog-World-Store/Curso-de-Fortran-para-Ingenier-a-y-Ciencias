program principal
  use mod_hidraulica
  implicit none
  real(8) :: q, d
  q = 0.35d0
  d = 0.50d0
  print '(A,F10.6)', 'Velocidad = ', velocidad_media(q,d)
end program principal
