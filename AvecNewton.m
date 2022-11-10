clear all 
close all
clc

x(1)=4;x(2)=6;x(3)=8;x(4)=10;
n=4 ; 
y(1)=1.59; y(2)=1.817; y(3)=2; y(4)=2.1544;
interv=1000;
dx=(x(4)-x(1))/interv;
xvar = x(1):dx:x(4);
polyn=0;
col={'+k','+r','+m','+y'};
d=Coefficient(n,x,y);
for j=1:length(xvar)
    polyn(j)=Newton(n,x,xvar(j),d);
end
figure(1)
hold on 
for i=1:n
    plot(x(i),y(i),col(i),'MarkerSize',12,'LineWidth',2);
end

plot(xvar,polyn,'b');
hold off
grid
axis([2 12 1.5 2.5])
title('interpolation selon newton')
coeff=polyfit(xvar,polyn,n-1)
        