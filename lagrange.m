function yint =lagrange(n,x,y,c)
s=0;
for i=1:n
    l=1;
    for j=1:n 
        if(i~=j)
            l=l*(c-x(j))/(x(i)-x(j));
        end
    end
    s=s+y(i).*l;
end
    yint=s;
end