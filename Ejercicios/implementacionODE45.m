
tf=10; %tiempo final

f=@(t,x) cos(x); 
x0=0; %situaci�n inicial
[t,x]=ode45(f,[0,tf],x0); %(funcion, [intervalo] , sit inicial)
plot(t,x)