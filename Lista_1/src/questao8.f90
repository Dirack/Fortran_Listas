program extremos

implicit none

integer :: i,imin,imax,erro_leitura ! Contador
real :: mini,maxi,x ! Menor,maior,x

open(111,file='./dat/numeros.dat',status='old',action='read')
read(111,*) x

mini=x
maxi=x
i=1

do
	read(111,*,iostat=erro_leitura) x
	if (erro_leitura/=0) exit
	i=i+1
	if (x<=mini) then
		mini=x
		imin=i
	else if (x>=maxi) then
		maxi=x
		imax=i
	end if
end do

write(*,'(A,1X,I0,1X,A)') 'O arquivo tem',i,'linhas.'
write(*,'(A,1X,F0.5,1X,A,1X,I0)') 'O maior valor:',maxi,'na linha',imax
write(*,'(A,1X,F0.5,1X,A,1X,I0)') 'O menor valor:',mini,'na linha',imin

end program extremos
