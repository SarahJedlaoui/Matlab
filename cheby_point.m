function x = cheby_point(n,a,b)
for i = 1:n
    y(i)=((a+b)/2) + ((b-a)/2)* cos(((2*(n-i)+1)*pi)/(2*n));
end
x=y;
end
