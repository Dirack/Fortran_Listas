PROGRAM quiz_1
!
! questao3.f90 (Fortran)
! 
! Objetivo: Resolução da questão 3 da Lista 1 de Fortran.
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

INTEGER :: i
REAL :: a

a = 0.05

! NINT arredonda para o número inteiro mais próximo
i = nint(2.*3.141593/a) ! 2* 3.141593/0.05

! A divisão é feita nos inteiros (5/3) = 1
a = a * (5/3) ! (5/3=1) *0.05 = 0.05

WRITE(*,*) "i=", i, " a=", a

END PROGRAM quiz_1
