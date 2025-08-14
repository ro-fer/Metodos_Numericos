close all
clear all
clc
f=@(x,t) -0.2*x;   %%Para escribir una funcion 
g=@(x) 10* exp(-x*0.2);

t0=0;
tf=100;
y0=10;
N=10 00;
[Y,h]=runge_kutta4(f,t0,tf,y0,N);
t=t0:h:tf;
figure(1)
A=g(t);
plot(t,Y,'b*')
hold on
plot(t,A,'r')
legend('con Runge-Kutta de orden 4','func real')