# Makefile 
# 
# Objetivo: Compilação e execução dos progamas da lista 1 de Fortran.
#
# Funcionamento: 
#
#	'make' para compilar todos programas.
#
#	'make questao1' para executar a questão 1, etc
# 
# Versão 1.0
# 
# Site: http://www.dirackslounge.online
# 
# Programador: Rodolfo A. C. Neves (Dirack) 11/06/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.

BIN = ./bin
SRC = ./src
F90 = $(shell ls $(SRC) | sed 's/^/\.\/bin\//')
LISTA =  $(F90:.f90=.x)

all:	$(LISTA)

$(BIN)/%.x:	$(SRC)/%.f90
	gfortran $< -o $@

%:	$(BIN)/%.x
	$<

clean:
	rm $(BIN)/*.x
