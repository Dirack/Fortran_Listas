program radianos_graus

implicit none

integer :: deg,mnt ! Graus e minutos
real :: x,sec ! Argumento e segundos
real,parameter :: pi=3.1415926 ! pi

write(*,*) 'Qual o valor em radianos que se deseja converter?'
read(*,*) x

deg=x*180./pi
mnt=60.*((x*180./pi)-deg)
sec=60.*(60.*(x*180./pi-deg)-mnt)

write(*,*) deg,'graus,',mnt,'minutos e',sec,'segundos.'

end program radianos_graus
