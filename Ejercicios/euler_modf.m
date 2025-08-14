function [Y,h]=euler_modf(f,t0,tf,y0,N)
h=(tf-t0)/N;
e=y0;
Y(1)=y0;
t=t0:h:tf;
for n=1:N
    e=h*f(e+(h/2),t(n)+(h/2)*f(e,t(n)))+e; %% constante 
    Y(n+1)=e;
end
end