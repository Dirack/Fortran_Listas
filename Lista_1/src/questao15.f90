program potencial_dipolo

implicit none

real,parameter :: e0=8.85418782e-12 ! Permissividade elétrica no vácuo (F/m)
real,parameter :: pi=3.1415926 ! Constante pi
real :: uq,ud,q ! Potencial de cargas, potencial do dipolo e carga
real :: a,h,x ! Parâmetros geométricos
integer :: i ! Contador

write(*,*) "Entre o valor de h:"
read(*,*) h

open(100,file='./dat/potencial.dat',status='replace',action='write')

a=0.5
q=1.
x=-5.

do
	if (x>=5.) exit
	uq=(q/(4.*pi*e0))*(1./sqrt(h**2+(a+x)**2)-1./sqrt(h**2+(a-x)**2))
	ud=(-a*q/(2.*pi*e0))*(x)/((x**2+h**2)**(1.5))
	write(100,*) x,uq,ud
	x=x+0.1
end do 

end program potencial_dipolo
