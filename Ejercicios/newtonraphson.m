function s=newtonraphson(f,s,df) %%s- semilla t-tolerancia df-derivada de f
tol=100;
while tol>0.0000001
    a=s-(f(s)/df(s));
    tol=abs(a-s);
    s=a;
end
s=a;
end

