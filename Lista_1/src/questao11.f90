program aproximacao_cos_sen

implicit none

integer :: i,j ! Contadores
real :: x,coss,sinn,tc,ts ! Cosseno, seno, termo do cosseno e termo do seno
real,parameter :: pi=3.1415926 ! pi

write(*,*) 'Qual o argumento (graus) cujos cosseno e seno deseja-se aproximar?'
read(*,*) 	x

x=x*(pi/180.) ! Graus para radianos
if ((x>=pi).or.(x<=-pi)) then
	x=mod(x,pi) ! Ângulo de -pi a pi
end if

tc=1.
ts=x
coss=tc
sinn=ts
i=0
j=0

write(*,*) 'Aproximação do cosseno:'
do
	i=i+1
	tc=tc*(-1)*(x*x)/((2*i)*(2*i-1))
	if ((coss+tc)==coss) exit
	coss=coss+tc
end do
write(*,*) i,coss
write(*,*) 'Valor calculado com a função intrínseca:',cos(x)

write(*,*) 'Aproximação do seno:'
do	
	j=j+1
	ts=ts*(-1)*(x*x)/((2*j+1)*(2*j))
	if ((sinn+ts)==sinn) exit
	sinn=sinn+ts
end do
write(*,*) j,sinn
write(*,*) 'Valor calculado com a função intrínseca:',sin(x)

end program aproximacao_cos_sen
