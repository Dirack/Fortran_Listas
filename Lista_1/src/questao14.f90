program triangulos_pitagoricos
implicit none

integer :: i,j,n ! Contadores
real :: h ! hipotenusa

n=0

do i=1,500
	do j=i+1,500
		h=sqrt(real(i*i+j*j))
		if ((h==int(h)).and.(h<=500)) then
			n=n+1
			write(*,100) 'Triangulo:',n,'Cateto1:',i,'Cateto2:',j,'Hipotenusa:',int(h)
		end if
	end do
end do

100 format (A10,1X,I3,3X,A8,1X,I3,3X,A8,1X,I3,3X,A11,1X,I3)

end program triangulos_pitagoricos
