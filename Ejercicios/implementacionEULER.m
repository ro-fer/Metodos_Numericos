close all
clear all
clc

f=@(x,t) -0.2*x;   %%Para escribir una funcion 
g=@(x) 10* exp(-x*0.2);
h=0.25;
a=0;
b=1;
t=a:h:b;
y=10;
N=(b-a)/h;
%%
Y=EULER(f,t,h,y,N)
figure(1)
A=g(t);
plot(t,Y,'r')
hold on
plot(t,A,'g')
legend('con euler','func real')
