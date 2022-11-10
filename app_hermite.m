clear all
clc
close all
x=[0, 1, 2]; n=3; %Polynome de degré 2(n-1)+1.
y=[1, 2, 5]; interv=1000; dx=(x(3)-x(1))/interv;

yder=[y(1),(y(2)-y(1))/(x(2)-x(1)),(y(3)-y(2))/(x(3)-x(2))];
xvar=x(1):dx:x(3);polyn=0;
col={'+k','+r','+m'};
for i=1:n
    lag=1;ci=0;
    for j=1:n
        if (i~=j)
            lag=(xvar - x(j))./(x(i) - x(j)).*lag;
            ci=ci+(1/(x(i) - x(j)));
        end
    end
    Di=1-2.*(xvar - x(i)).*ci;
    polyn=polyn + (y(i).*Di + yder(i).*(xvar -x(i))).*(lag).^2;
    figure(1)
    hold on
    plot(x(i),y(i),col{i},'MarkerSize',12,'LineWidth',2);
end
plot(xvar,polyn,'b','LineWidth',1);
hold off
grid
xlabel('x');
ylabel('y');
axis([-0.5 2.5 -0.5 5.5])
title('Interpolation selon Hermite')
coeff = polyfit(xvar,polyn,2*(n-1)+1) %evaluation des coefficients
evalp=polyval(coeff,xvar);
    