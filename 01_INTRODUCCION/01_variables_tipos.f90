program variables_tipos
 implicit none
 integer :: iteracion
 real :: temperatura
 real(8) :: caudal
 logical :: convergio
 character(len=30) :: proyecto

 iteracion = 12
 temperatura = 18.5
 caudal = 2.345678901d0
 convergio = .true.
 proyecto = 'Curso Fortran Tecprog World'

 print *, 'Iteracion = ', iteracion
 print *, 'Temperatura = ', temperatura
 print *, 'Caudal = ', caudal
 print *, 'Convergio = ', convergio
 print *, trim(proyecto)
end program variables_tipos
