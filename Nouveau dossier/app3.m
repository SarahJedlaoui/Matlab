clear all
clc
close all
n=[2 4 8 12 18];
col_a={'+k','+r','+m','+y','+y','+c','+g','+b','+m','+k','+r','+m','+y','+y','+c','+g','+b','+m'};
col_b=col_a;
col=[col_a col_b];
E=zeros(1,length(n));
for i=1: length (n)
    x=linspace(0,3*pi,n(i));
   f=sin(x);
    interv=1000;
    dx=(x(length(x))-x(1))/interv;
    xvar=x(1):dx:x(length(x));f_xvar=sin(xvar);polyn=0;
    for j=1:length(xvar)
        polyn(j)=Lagrange(n(i),x,f,xvar(j));
    end
    figure(i)
    hold on
    for k =1:n(i)
        plot(x(k),f(k),col{k},'MarkerSize',12,'LineWidth',2);
    end
    plot(xvar,polyn,'--b');
     plot(xvar,f_xvar,'r');
     hold off
     grid
     axis([-0.5 3*pi+1.5  -1.5 1.5])
     title('Interpolation selon lagrange');
     coeff = polyfit(xvar,polyn,n(i)-1) 
     E(i) = max(abs(f_xvar-polyn));
end 
figure ( length(n)+1)
stairs(n,E,'b');
grid
title('erreur d''interpolation de lagrange E_n pour des points equidistants')
     
    