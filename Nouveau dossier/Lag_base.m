function L_base=Lag_base(n,x,a)
L_base= [];
for i=1:n
    L=1;
 for j=1:n
    if(i~=j)
        L=L.*(a-x(j))/(x(i)-x(j));
    end
 end
 L_base=[L_base L];
end
end