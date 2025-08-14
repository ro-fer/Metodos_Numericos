function [Y,h]=heun(f,t0,tf,y0,N)
h=(tf-t0)/N;
e=y0;
Y(1)=y0;
t=t0:h:tf;
for n=1:N
    e=e+(h/2)*f(e,t(n))+(h/2)*f(e+h,t(n)+h*f(e,t(n))); %% constante 
    Y(n+1)=e;
end
end