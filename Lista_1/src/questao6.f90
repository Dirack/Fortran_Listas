PROGRAM distancia
!
! questao6.f90 (Fortran)
! 
! Objetivo: Resolução da questão 6 da lista 1 de Fortran.
! Programa para calcular a distância entre dois pontos.
! 
! Versão 1.0
! 
! Site: http://www.dirackslounge.online
! 
! Programador: Rodolfo A. C. Neves (Dirack) 26/08/2019
! 
! Email: rodolfo_profissional@hotmail.com
! 
! Licença: Software de uso livre e código aberto.
IMPLICIT NONE

REAL:: x1,y1
REAL:: x2,y2

WRITE(*,*) "Entre com o ponto 1  (x1,y1):"
READ(*,*) x1,y1
WRITE(*,*) "Entre com o ponto 2 (x2,y2):"
READ(*,*) x2,y2

WRITE(*,*) "A distância entre esses pontos é:",sqrt((x2-x1)**2+(y2-y1)**2)

END PROGRAM distancia
