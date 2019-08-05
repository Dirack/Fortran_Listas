PROGRAM triangulo
!
! questao4.f90 (Fortran)
! 
! Objetivo: Resolução da questão 4 da Lista 1 de Fortran.
! 
! Versão 1.0
! 
! Site: http://www.dirackslounge.online
! 
! Programador: Rodolfo A. C. Neves (Dirack) 22/07/2019
! 
! Email: rodolfo_profissional@hotmail.com
! 
! Licença: Software de uso livre e código aberto.
IMPLICIT NONE

REAL :: a, b, c, teta ! Teste usando trio pitagórico 3, 4, 5
REAL:: PI_=4*atan(1.) ! atan(1)=PI/4=45°
REAL:: angulo=atan(3./4.)

WRITE(*,*) angulo*180./PI_
WRITE(*,*) 'Digite o comprimento da hipotenusa:'
READ(*,*) c
WRITE(*,*) 'Digite o ângulo TETA em graus:'
READ(*,*) teta

! Transformar teta para radianos
teta = (teta * PI_)/180.

! O programa irá funcionar, porém irá produzir o valor incorreto
! O argumento das funções 'cos' e 'sin' é o ângulo em radianos
a = c * cos(teta)
b = c * sin(teta)

WRITE(*,*) 'Comprimento do lado adjacente:', a
WRITE(*,*) 'Comprimento do lado oposto:', b

END PROGRAM triangulo
