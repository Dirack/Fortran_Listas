program consumo

implicit none

integer :: i,erro ! Contador da serie e erro na leitura
real :: l,km,sl,skm ! litros e quilometros

i=0
sl=0.
km=0.
do
	write(*,*) 'Quantos litros? (-1 para terminar)'
	read(*,*) l
	if (l==-1.) exit
	write(*,*) 'Quantos quilometros?'
	read(*,*) km
	write(*,*) 'Quilometros/litro:',km/l
	sl=sl+l
	skm=skm+km
end do

write(*,*) 'A média geral de km/l foi',skm/sl

end program consumo
