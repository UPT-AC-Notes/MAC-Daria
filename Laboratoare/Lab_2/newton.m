function xc=newton(f,df,x0,k)
x(1)=x0;
for i=1:k
    x(i+1)=x(i)-f(x(i))/df(x(i));
end
xc=x(k+1);