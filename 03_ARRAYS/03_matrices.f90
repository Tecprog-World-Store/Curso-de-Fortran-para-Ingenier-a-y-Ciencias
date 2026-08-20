program matrices
 implicit none
 real(8) :: A(2,2), B(2,2), C(2,2)
 A = reshape([1d0, 3d0, 2d0, 4d0], shape(A))
 B = reshape([5d0, 7d0, 6d0, 8d0], shape(B))
 C = matmul(A,B)
 print *, 'C ='
 print '(2F10.2)', C(1,:)
 print '(2F10.2)', C(2,:)
end program matrices
