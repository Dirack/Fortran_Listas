program aproximacao_pi

implicit none

integer :: i ! Contador da serie
real(kind=8) :: pi,t ! Pi aproximado e termo da serie

t=4.
pi=t
i=0

write(*,*) 'Aproximação de pi por serie de taylor:'
do
	i=i+1
	t=(-1)*t*(2*i-1)/(2*i+1)
	if (abs(t)<=1e-7) exit
	pi=pi+t
end do
write(*,*) i,'termos aproximam pi a',pi
write(*,*) 'Valor calculado com funções intrínsecas:',4.*atan(1.)

end program aproximacao_pi
