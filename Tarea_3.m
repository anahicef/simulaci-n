clear
clc
#Definicion de variables
t = 80;        #tiempo
l = 10;        #largo de eje
n = 25;         #No particulas 
d = 2;         #No de dimensiones
umbral = l/30;

#inicio de programa
C = unifrnd(0,l,n,d);
D = unifrnd(-l/30,l/30,n,d);
x = 1;
y = 2;
plot(C(:,x), C(:,y), 'og', "markersize", 20);
xlim([0,l]);
ylim([0,l]);
colisiones = 0;

#Condición bucle, llega a "l" y retorna a "-l"
for T=1:t
  pause(0.2)             
  C = C + D;
  for i = 1:n
    for j = 1:d
      if  C(i,j) > l  
        C(i,j) -= l; 
      elseif C(i,j) < 0;  
        C(i,j)+= l; 
      endif
    endfor 
  endfor 
  
  #Condición donde estan las colisiones
  for p1 = 1 : (n - 1)
    for p2 = (p1 + 1) : n 
       #sí hay colision genera rebote
       if sqrt(sum((C(p1, :) - C(p2, :)).^2)) <= umbral
          colisiones++;
          cambio = D(p1, :);
          D(p1, :) = -D(p2, :);
          D(p2, :) = -cambio;
       endif
    endfor
  endfor
  plot(C(:,x), C(:,y), 'og',"markersize", 20); #imprime rebote de particula
  xlim([0,l]);
  ylim([0,l]);
endfor

colisiones
