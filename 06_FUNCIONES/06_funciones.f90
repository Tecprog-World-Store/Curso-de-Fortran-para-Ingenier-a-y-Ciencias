program demo_funcion
  implicit none
  real(8) :: diametro, area
  diametro = 0.50d0
  area = area_circular(diametro)
  print '(A,F10.6)', 'Area = ', area
contains
  real(8) function area_circular(d) result(a)
    implicit none
    real(8), intent(in) :: d
    real(8), parameter :: pi = acos(-1.0d0)
    a = pi*d*d/4.0d0
  end function area_circular
end program demo_funcion
