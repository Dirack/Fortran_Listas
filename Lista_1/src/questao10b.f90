program aproximacao_euler_x

implicit none

integer :: i ! Contador da serie
real :: x,e,t ! Expoente, valor da serie e termo da serie

write(*,*) 'Qual o expoente da potencia da constante de euler a ser aproximada?'
read(*,*) 	x

t=1.
e=t
i=0

write(*,*) 'Aproximacao da potencia de euler:'
do
	i=i+1
	t=t*x/i
	if ((e+t)==e) exit
	e=e+t	
	write(*,*) i+1,'termos aproximam e elevado a',x,'de',e
end do
write(*,*) 'Valor calculado com a funcao intrinseca:',exp(x)

end program aproximacao_euler_x
