clc
#Definicion de variables
t=15;        #tiempo
l=5;        #largo de eje
a=0;

#inicio de programa
N1=round(unifrnd(-l,l,1,1));  #Genera un número alearorio dentro de "l"
N2=round(unifrnd(-l,l,1,1));  #Genera un número alearorio dentro de "l"
N3=round(unifrnd(-l,l,1,1));  #Genera un número alearorio dentro de "l"
No=[N1 N2 N3]

for i=1:t                    #Bucle de tiempo 

#"A" y "B" generan numeros al azar entre -1 y 1
#se redondea
#se suma al numero aleatorio generado
  A=round(unifrnd(-1,1,1,1));
  B=round(unifrnd(-1,1,1,1));
  C=round(unifrnd(-1,1,1,1));
  a=sum(A);
  b=sum(B);
  if a==1                    
    a=1;                     
   elseif a<1                     
   a=-1; 
   elseif b==1
    b=1;
   else
    b=-1;  
  endif
  N1=N1+a;
  N2=N2+b;
  N3=N3+a;
  
#Condición ciclo: al llegar al valor de "l" regresa a "-l" y viceversa
  if N1>l                    
    N1=-l;                    
  elseif N1<-l               
    N1=l;
  elseif N2>l                    
    N2=-l;                    
  elseif N2<-l               
    N2=l;
   elseif N3>l                    
    N3=-l;                    
  elseif N3<-l               
    N3=l;
  else
    N1=N1;
    N2=N2;
    N3=N3;
  endif 
  
  No=[N1 N2 N3]
endfor
