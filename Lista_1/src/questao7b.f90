program triangulo_retangulo

implicit none

integer :: a,b,c ! lados do triangulo
logical :: p1,p2,p3 ! propriedades do triângulo retângulo

write(*,*) 'Entre com os supostos lados (a,b,c) do triângulo:'
read(*,*) a,b,c

p1=(a>0.).and.(b>0.).and.(c>0.)
p2=((a+b)>c).and.((b+c)>a).and.((a+c)>b)
p3=((a*a+b*b)==(c*c)).or.((a*a+c*c)==(b*b)).or.((b*b+c*c)==(a*a))

if (p1) then
	if (p2) then
		if (p3) then
			write(*,*) 'Estes inteiros formam um triângulo retângulo.'
		else
			write(*,*) 'Estes inteiros não formam um triângulo retângulo.'
		end if
	else
		write(*,*) 'Estes inteiros não formam um triângulo.'
	end if
else
	write(*,*) 'Não é admitido lado negativo.'
end if

end program triangulo_retangulo
