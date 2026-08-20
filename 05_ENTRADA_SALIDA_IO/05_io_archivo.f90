program io_archivo
 implicit none
 integer :: u, ios, n
 real(8) :: x, suma

 suma = 0.0d0
 n = 0
 open(newunit=u, file='datos.txt', status='old', action='read', iostat=ios)
 if (ios /= 0) stop 'No se pudo abrir datos.txt'

 do
 read(u,*,iostat=ios) x
 if (ios /= 0) exit
 suma = suma + x
 n = n + 1
 end do
 close(u)

 open(newunit=u, file='resultado.txt', status='replace', action='write')
 write(u,'(A,I0)') 'N=', n
 write(u,'(A,F10.4)') 'SUMA=', suma
 if (n > 0) write(u,'(A,F10.4)') 'MEDIA=', suma/n
 close(u)

 print *, 'Resultado escrito en resultado.txt'
end program io_archivo
