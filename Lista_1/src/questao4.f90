PROGRAM triangulo
REAL :: a, b, c, teta
WRITE(*,*) 'Digite o comprimento da hipotenusa:'
READ(*,*) c
WRITE(*,*) 'Digite o ângulo TETA em graus:'
READ(*,*) teta
a = c * cos(teta)
b = c * sin(teta)
WRITE(*,*) 'Comprimento do lado adjacente:', a
WRITE(*,*) 'Comprimento do lado oposto:', b
END PROGRAM triangulo
