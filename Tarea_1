clc
%Definir constantes
l=10;                %largo de eje
p=2;                 %atenuación
n1=300;                %No particulas
n2=3;                %No de dimensiones 
sumatoria=0;

%Inicio de programa
V=((2*l)/p)+1;           %valores permitidos
d=round(unifrnd(1,V,n1,n2)); 
for i=1:n1
  for j=1:n2
    d(i,j)=((d(i,j)-1)*p)-l;
 endfor
endfor
%d                 %Muestra matriz generada

for i=1:n1        %Operaciones de distancia
  Z=d(i,:);
  z=Z.^2;
  s=sum(z);
  R=sqrt(s);
  r(1,i)=R;
  endfor
hist (r)
 
