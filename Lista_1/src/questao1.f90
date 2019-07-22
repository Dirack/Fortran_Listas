PROGRAM sample_1
!
! Objetivo: (Questão 1 - lista 1) Mostrar as operações entre
! os tipos primitivos reais e inteiro.
!
! Versão 1.0
!
! Programador: Rodolfo A. C. Neves 05/04/2018
!
! Email: rodolfo_profissional@hotmail.com
!
! Site: http://www.dirackslounge.online

IMPLICIT NONE ! Não permitir variável implícita

INTEGER :: i1, i2, i3
REAL :: a1=2.4, a2

! i1=2
i1 = a1 ! a1 é REAL, porém i1 é INTEGER, 
! logo i1 recebe apenas a parte inteira de a1, se a1=2.4 i1=2 (parte inteira apenas)

!i2 = 4
i2 = INT(a1*i1) ! a multiplicação é feita nos reais, porém a função INT(x) 
! permite apenas a atribuição da parte inteira
! à i2

! i3=5
! NINT(x) arredonda para o inteiro mais próximo se a1=2.4 e i1=2, a1*i1 é arredondado para
! 5 
i3 = NINT(a1*i1)

! o expoente i1 é inteiro porém a base a1 é real e a conta é feita nos reais e atribuída
! a a2, também real. 
a2 = a1**i1 !2.4^2=2.4*2.4=5.76

! Escreva os valores na tela
WRITE(*,*) i1, i2, i3, a1, a2
END PROGRAM 
