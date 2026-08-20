program operaciones
 implicit none
 real(8) :: a, b, suma, producto, potencia
 a = 12.0d0
 b = 5.0d0
 suma = a + b
 producto = a * b
 potencia = a ** 2
 print '(A,F8.3)', 'Suma = ', suma
 print '(A,F8.3)', 'Producto = ', producto
 print '(A,F8.3)', 'a^2 = ', potencia
end program operaciones
