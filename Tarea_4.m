
clear
clc
#Definicion de variables
t = 25;        #tiempo
l = 30;        #largo de eje
n = 45;        #No particulas 
d = 2;         #No de dimensiones
atn=20;        #atenuación
umbral = l/atn;
tam = 0;

#Vectores de color
AzCi = [18 150 155] ./ 255;
AzMa = [1 17 181] ./ 255;
Az = [25 150 155] ./ 255;


#inicio de programa
C = unifrnd(0,l,n,d);
D = unifrnd(-l/30,l/30,n,d);
x = 1;
y = 2;


#Imprime matriz para generación de párticulas
plot(C(:,x), C(:,y), 'ko', 'LineWidth', 2, 'MarkerEdgeColor', AzCi, 'MarkerFaceColor', AzMa, 'MarkerSize', 15);
xlim([0,l]);
ylim([0,l]);
colisiones = 0;

#Generación de movimiento aleatorio
for T=1:t
  pause(0.2)             
  C = C + D;
  for i = 1:n
    for j = 1:d
      #Condición bucle si llega "l" cambiar a "0"
      if  C(i,j) > l  
        C(i,j) -= l; 
      elseif C(i,j) < 0;  
        C(i,j)+= l; 
      endif
    endfor 
  endfor 
  
  choque=[];
  
  for p1 = 1 : (n - 1)
    for p2 = (p1 + 1) : n 

      #Sí doble de distancia oclidiana igual a umbral 
      #entonces frenar
      if 2*sqrt(sum((C(p1, :) - C(p2, :)).^2)) <= umbral
        tam++;
        
      endif
      
      #Sí distancia oclidiana = a umbral 
      #entonces generar un rebote
      if sqrt(sum((C(p1, :) - C(p2, :)).^2)) <= umbral
        colisiones++; #Cuenta colisiones obtenidas
        D(p1, :) = -D(p2, :);
        D(p2, :) = -D(p1, :);
      endif
    endfor
  endfor

  #Imprime colisiones
  plot(C(:,x), C(:,y), 'ko', 'LineWidth', 2, 'MarkerEdgeColor', AzCi, 'MarkerFaceColor', AzMa, 'MarkerSize', 15);
  xlim([0,l]);
  ylim([0,l]);
  
endfor

colisiones #Imprime colisiones obtenidas
tam
