clear all
clc
close all
x=[4 6 8 10];
n=4;
y=[1.59 1.817 2 2.1544];
interv=1000;
dx=(x(4)-x(1))/1000;
xvar=x(1):dx:x(4);
col=['+k','+r','+m','+m'];
pol=0;
d=coefficient(n,x,y);
for j=1:length(xvar)
    pol(j)=Newton(n,x,xvar(j),d);
end
figure(1)
hold on
for i=1:n
    plot(x,y,col(i),'MarkerSize',12,'lineWid',2);
end
plot(xvar,pol,'b');
hold off
grid
% axis([-0.5 2.5 -0.5 5.5]);
title('figure 1')