l=9; %largo de eje
p=3; %atenuación
n1=3; 
n2=3;
sumatoria=0;
d=round(unifrnd(-l,l,n1,n2)); 
d
for i = 1:n1
  Z=d(i,:);
  z=Z.^2;
  s=sum(z);
  sumatoria=s+sumatoria;
endfor
R=sqrt(sumatoria)
