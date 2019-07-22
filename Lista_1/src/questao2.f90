PROGRAM questao2
!
! Objetivo: Resolução questão 2 da Lista 1, exemplificar
! operações com tipos primitivos reais e inteiros.
!
! Versão 1.0
!
! Programador: Rodolfo A. C. Neves 23/04/2018

IMPLICIT NONE ! Não permitir variável implícita

! Declaração de Variáveis
REAL:: a, b ! 2.4 5.3 3.3 0.125
INTEGER:: n, i, j ! 1 2 3 -1 0 100

i=10. ! i é inteiro, apesar do ponto i=10
j=3 ! j é inteiro
n=i/j ! 10/3=3  a divisão é feita nos inteiros, e é atribuída a um número inteiro n
a=i/j ! 10/3=3 a divisão é feita nos inteiros, e é atribuída a um número real a

b=REAL(i)/j ! 10/3=3.333333 a divisão é feita nos reais, pois i é convertido 

!Exibindo as variáveis na tela
WRITE(*,*) "i=", i
WRITE(*,*) "j=", j
WRITE(*,*) "n=", n
WRITE(*,*) "a=", a
WRITE(*,*) "b=", b

END PROGRAM
