clc
#Definicion de variables
t=6;         #tiempo
l=5;         #largo de eje

#inicio de programa
No=round(unifrnd(-l,l,1,1))  #Genera un número alearorio dentro del l

for i=1:t                    #Bucle de tiempo 
  No=No+a
  A=round(unifrnd(-1,1,1,1));
  if A==1                    #Condición para generar 1 y -1
    A=1;
   else
    A=-1;
  endif
  a=sum(A);
 endfor
