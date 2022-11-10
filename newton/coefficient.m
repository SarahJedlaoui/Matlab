function d = coefficient(n,x,y)
D=zeros(n,n);
D(:,1)=y';
for j=2:n
    for i=j:n 
        D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
d=diag(D);
end
