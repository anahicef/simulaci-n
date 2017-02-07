clc
#Definicion de variables
t=3;        #tiempo
l=5;        #largo de eje
p=5;        #No particulas 
n=2;         #No de dimensiones
a=0;

#inicio de programa
N1=round(unifrnd(-l,l,p,n))  #Genera un número alearorio dentro de "l"


for T=1:t                    #Bucle de tiempo 

#"A" B" "C" generan numeros al azar entre -1 y 1
#se redondea
#se suma al numero aleatorio generado


#Define en q dimension se hará la suma
d=round(unifrnd(1,n,1,1));

for i=1:p
  A=round(unifrnd(-1,1,1,1));
  a=sum(A);
  if a==1                    
    a=1;                     
   else                     
   a=-1; 
  endif
  
 N1(i,d)=N1(i,d)+a; 

#Condición ciclo: al llegar al valor de "l" regresa a "-l" y viceversa
  if  N1(i,d)>l; 
   N1(i,d)=-l;
  elseif N1(i,d)<-l; 
   N1(i,d)=l;
  else
   N1=N1;
  endif

endfor
N1
 
  plot(N1(:,1),N1(:,2),'p',"markersize", 10)
  xlim([-l,l]);
  ylim([-l,l]);
  saveas(gcf,strcat('ploty',num2str(T),'.png'));
  
endfor
