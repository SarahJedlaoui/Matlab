function P = Newton(n,x,c,d)
s=d(1);
for i=2:n
    base=1;
    for k=1:i-1
        base=base*(c-x(k));
    end
    s=s+base*d(i);
    P=s;
end
end