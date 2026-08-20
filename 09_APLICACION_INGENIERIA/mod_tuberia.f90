module mod_tuberia
  implicit none
  private
  public :: calcular_tuberia
contains
  subroutine calcular_tuberia(q,d,l,eps,nu,v,re,f,hf)
    implicit none
    real(8), intent(in) :: q,d,l,eps,nu
    real(8), intent(out) :: v,re,f,hf
    real(8), parameter :: pi=acos(-1.0d0), g=9.80665d0
    real(8) :: a
    a = pi*d**2/4.0d0
    v = q/a
    re = v*d/nu
    if (re < 2300.0d0) then
       f = 64.0d0/re
    else
       f = 0.25d0/(log10(eps/(3.7d0*d)+5.74d0/(re**0.9d0))**2)
    end if
    hf = f*(l/d)*(v**2/(2.0d0*g))
  end subroutine calcular_tuberia
end module mod_tuberia
