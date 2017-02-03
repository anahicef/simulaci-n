clc
#Definicion de variables
t=10;        #tiempo
l=5;         #largo de eje
a=0;

#inicio de programa
No=round(unifrnd(-l,l,1,1))  #Genera un número alearorio dentro de "l"

for i=1:t                    #Bucle de tiempo 

#"A" genera un numero al azar entre -1 y 1
#se redondea
#se suma al numero aleatorio generado
  A=round(unifrnd(-1,1,1,1));
  a=sum(A);
  if a==1                    
    a=1;                     
   else                      
   a=-1;                     
  endif
  No=No+a;
  
#Condición ciclo: al llegar al valor de "l" regresa a "-l" y viceversa
  if No>l                    
    No=-l;                    
  elseif No<-l               
    No=l;
   else
    No=No;
    endif 
  No
  
endfor
