program triangulos

implicit none

real :: a,b,c ! lados do triangulo
logical :: p1,p2 ! propriedades do triângulo

write(*,*) 'Entre com os supostos lados (a,b,c) do triângulo:'
read(*,*) a,b,c

p1=(a>0.).and.(b>0.).and.(c>0.)
p2=((a+b)>c).and.((b+c)>a).and.((a+c)>b)

if (p1) then
	if (p2) then
		write(*,*) 'Estes reais formam um triângulo.'
	else
		write(*,*) 'Estes reais não formam um triângulo.'
	end if
else
	write(*,*) 'Não é admitido lado negativo.'
end if

end program triangulos
