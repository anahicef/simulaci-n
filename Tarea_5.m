clc
figure(1)

l = 20; #Largo de eje
r = 0.5; #Radio
C = 0;
n = 5;  #Número de particulas
p = 2;  #Número de ejes
T = 60; #Tiempo
V = 15; #Velocidad

 
 x = 10*rand(n,p)-10
  
 #Vector para velocidad 
 Vx = V*rand(n,p)-5;
 Vy = V*rand(n,p)-5; 

 dt = 0.1;
 
 for t=1:T
    for i=1:n
     x(i,1) = x(i,1)+Vx(i)*dt;
     x(i,2) = x(i,2)+Vy(i)*dt;
  
  #Condición bucle
  for q = 1:n
    for w = 1:p
      if  x(q,w) > l  
        x(q,w) -= l; 
      elseif x(q,w) < 0;  
        x(q,w)+= l; 
      endif
    endfor
   endfor 
    
    
   for i=1:n
    for j=(i+1):n
      dx = x(i,1)-x(j,1);
      dy = x(i,2)-x(j,2);
        #Repulsión
        if sqrt((dx*dx)+(dy*dy)) <= 2*r   #a partir de un radio genera un cambio en velocidad
          x(i,1) = x(i,1)-Vx(i)*dt;       #y cambio de dirección para generar repulsión
          x(i,2) = x(i,2)-Vy(i)*dt; 
            for i=1:n;
              x(i,1) = x(i,1)-Vx(i)*dt;
              x(i,2) = x(i,2)-Vy(i)*dt; 
            endfor
        endif 
     endfor


    endfor
    endfor 
    plot(x(:,1),x(:,2),'op','markersize',13);
    xlim([0,l]);
    ylim([0,l]);
    hold on
    pause(dt);
    hold off
 endfor
