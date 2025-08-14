function [Y,h]=runge_kutta4(f,t0,tf,y0,N)
h=(tf-t0)/N;
e=y0;
Y(1)=y0;
t=t0:h:tf;
for n=1:N
    k1=f(e,t(n));
    k2=f(e+(h/2),t(n)+(h/2)*k1);
    k3=f(e+(h/2),t(n)+(h/2)*k2);
    k4=f(e+h,t(n)+h*k3);
    e=e+(h/6)*( k1 +k2+k3+k4); %% constante 
    Y(n+1)=e;
end
end