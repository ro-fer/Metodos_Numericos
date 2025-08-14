
tf=10; %tiempo final

f=@(t,x) cos(x); 
x0=0; %situación inicial
[t,x]=ode45(f,[0,tf],x0); %(funcion, [intervalo] , sit inicial)
plot(t,x)