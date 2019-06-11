program media

implicit none

integer :: i,erro_leitura ! contador e variavel auxliar de erro
real :: nota1,soma1,media1,nota2,soma2,media2 ! notas, somas e medias

open(111,file='./dat/dados.dat',status='old')

soma1=0.
soma2=soma1

do
	read(111,*,iostat=erro_leitura) i,nota1,nota2
	if (erro_leitura/=0) exit
	soma1=soma1+nota1
	soma2=soma2+nota2
end do

media1=soma1/i
media2=soma2/i

backspace 111
write(111,*) '======================================================='
write(111,120) 'medias:',media1,media2

120 format (T6,A6,T21,F10.7,T41,F10.7)

end program media
