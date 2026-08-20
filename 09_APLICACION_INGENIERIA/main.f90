program aplicacion_tuberia
  use mod_tuberia
  implicit none
  real(8) :: q,d,l,eps,nu,v,re,f,hf
  integer :: u, ios

  open(newunit=u,file='entrada.dat',status='old',action='read',iostat=ios)
  if (ios /= 0) stop 'No se pudo abrir entrada.dat'
  read(u,*) q
  read(u,*) d
  read(u,*) l
  read(u,*) eps
  read(u,*) nu
  close(u)

  call calcular_tuberia(q,d,l,eps,nu,v,re,f,hf)

  open(newunit=u,file='salida.dat',status='replace',action='write')
  write(u,'(A,F12.6)') 'VELOCIDAD=',v
  write(u,'(A,F12.3)') 'REYNOLDS=',re
  write(u,'(A,F12.8)') 'FACTOR_F=',f
  write(u,'(A,F12.6)') 'PERDIDA_HF=',hf
  close(u)

  print '(A,F12.6)', 'VELOCIDAD=',v
  print '(A,F12.3)', 'REYNOLDS=',re
  print '(A,F12.8)', 'FACTOR_F=',f
  print '(A,F12.6)', 'PERDIDA_HF=',hf
end program aplicacion_tuberia
