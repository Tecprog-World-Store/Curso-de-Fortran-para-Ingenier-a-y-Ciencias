module mod_hidraulica
  implicit none
  private
  public :: area_circular, velocidad_media
contains
  pure real(8) function area_circular(d) result(a)
    real(8), intent(in) :: d
    real(8), parameter :: pi = acos(-1.0d0)
    a = pi*d*d/4.0d0
  end function area_circular

  pure real(8) function velocidad_media(q,d) result(v)
    real(8), intent(in) :: q,d
    v = q / area_circular(d)
  end function velocidad_media
end module mod_hidraulica
