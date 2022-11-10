clear all
clc
close all
x=[0 1 2];
n=3;
y=[1 2 5];
interv=1000;
dx=(x(3)-x(1))/interv;
xvar=x(1):dx:x(3);
polyn=0;
col={'+k','+r','+m'};
for j=1:length(xvar)
    polyn(j)=lagrange(n,x,y,xvar(j));
end
figure(1)
hold on
for i=1:n 
    plot(x(i),y(i),col{i},'MarkerSize',12,'LineWidth',2);
end
plot(xvar,polyn,'b');
hold off
grid
axis([-0.5 2.5 -0.5 5.5]);
title('Interpolation selon lagrange ')
coeff=polyfit(xvar,polyn,n-1);