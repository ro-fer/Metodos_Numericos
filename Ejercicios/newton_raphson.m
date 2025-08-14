function s=newton_raphson(f,s,df) %%s- semilla t-tolerancia df-derivada de f
tol=100;
while tol>0.000000000000000001
    s=s-(f(s)/df(s));
    tol=abs(ant-s);
    ant=s;
end

