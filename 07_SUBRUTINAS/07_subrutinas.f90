program demo_subrutina
  implicit none
  real(8) :: q, d, v
  q = 0.35d0
  d = 0.50d0
  call velocidad_tuberia(q, d, v)
  print '(A,F10.6)', 'Velocidad = ', v
contains
  subroutine velocidad_tuberia(caudal, diametro, velocidad)
    implicit none
    real(8), intent(in) :: caudal, diametro
    real(8), intent(out) :: velocidad
    real(8), parameter :: pi = acos(-1.0d0)
    velocidad = caudal / (pi*diametro**2/4.0d0)
  end subroutine velocidad_tuberia
end program demo_subrutina
