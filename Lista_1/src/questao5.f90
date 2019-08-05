PROGRAM questao5
!
! questao5.f90 (Fortran)
! 
! Objetivo: Resolução da questão 5 da Lista 1 de
! Programação em FORTRAN. Esse programa mede o rendimento
! médio de um automóvel. O usuário irá fornecer o consumo em 
! litros e os quilômetros rodados em uma viagem qualquer.
! Após fornecer todos os valores, digita -1 para parar finalizar,
! e recebe como resultado o consumo médio.
! 
! Versão 1.0
! 
! Site: http://www.dirackslounge.online
! 
! Programador: Rodolfo A. C. Neves (Dirack) 07/04/2018
! 
! Email: rodolfo_profissional@hotmail.com
! 
! Licença: Software de uso livre e código aberto.

IMPLICIT NONE !Não permitir variável implícita

REAL:: litros ! Consumo em litros
REAL:: km ! Quilômetros rodados
REAL:: media=0 ! Consumo médio
INTEGER:: i=0 ! Número de entradas

! Laço para receber os valores digitados pelo usuário
! Digite -1 para sair
DO

	WRITE(*,*) "Quantos Litros (-1 PARA SAIR): "
	READ(*,*) litros

	! condição de saída, se é apenas um comando
	! o IF pode estar em apenas uma linha
	IF(litros == -1) EXIT

	WRITE(*,*) "Quantos quilômetros: "
	READ(*,*) km

	! Forneça o rendimento daquela viagem ao usuário
	WRITE(*,*) "Quilômetros/Litro: ", km/litros

	! Incremente o contador do número de entradas
	i = i + 1

	! média recebe a soma dos rendimentos
	media = media + km/litros

END DO

! O consumo médio é a soma do consumos (armazenada na variável média)
! Pelo número de valores fornecidos pelo usuário
WRITE(*,*) "A média geral de km/l é:", media/i


END PROGRAM
