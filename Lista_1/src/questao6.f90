program distancia

implicit none

real :: x1,y1,x2,y2 ! Coordenadas e distância

write(*,*) "Entre com o ponto 1  (x1,y1):"
read(*,*) x1,y1
write(*,*) "Entre com o ponto 2 (x2,y2):"
read(*,*) x2,y2

write(*,*) "A distância entre esses pontos é:",sqrt((x2-x1)**2+(y2-y1)**2)

end program distancia
