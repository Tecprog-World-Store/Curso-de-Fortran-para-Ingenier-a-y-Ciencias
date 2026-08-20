program control
 implicit none
 integer :: i
 real(8) :: reynolds
 reynolds = 3500.0d0

 if (reynolds < 2300.0d0) then
 print *, 'Regimen laminar'
 else if (reynolds <= 4000.0d0) then
 print *, 'Regimen de transicion'
 else
 print *, 'Regimen turbulento'
 end if

 do i = 1, 10
 if (mod(i,2) == 0) cycle
 if (i > 7) exit
 print *, 'i = ', i
 end do
end program control
