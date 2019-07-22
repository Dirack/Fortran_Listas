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

SRC = ./src
BIN = ./bin
CC = gfortran
LISTA = $(notdir $(wildcard ./src/*.f90))
TMP = $(addprefix $(BIN)/, $(LISTA))
DEP = $(TMP:.f90=.x)

all:	$(DEP)

$(BIN)/%.x:	$(SRC)/%.f90
	$(CC) $< -o $@

%:	$(BIN)/%.x
	$<

clean:
	rm $(DEP)
