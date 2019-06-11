program aproximacao_euler

implicit none

integer :: i ! Contador da serie
real :: e,t ! Expoente, valor da serie e termo da serie

t=1.
e=t
i=0

write(*,*) 'Aproximação da constante de euler:'
do
	i=i+1
	t=t/i
	if ((e+t)==e) exit
	e=e+t
	write(*,*) i+1,'termos aproximam e de',e
end do
write(*,*) 'Valor calculado com a função intrínseca:',exp(1.)

end program aproximacao_euler
