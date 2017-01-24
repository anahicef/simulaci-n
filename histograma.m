l=5; 
n1=3; %párticulas
n2=3; %dimensiones
d=round(unifrnd(-l,l,n1,n2));
d
A=d(1,:); % esto se cambiaría por un for
a=A.^2;
AA=sum(a) 
B=d(2,:);
b=B.^2;
BB=sum(b)
C=d(2,:);
c=C.^2;
CC=sum(c) 
suma=sqrt(AA+BB+CC); %distancia al origen
