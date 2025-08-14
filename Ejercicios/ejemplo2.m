%% Datos grales
clear all
close all
clc

xp=0:0.1:2*pi; 
yp=sin(xp); 
f=@(x) x.^2;

subplot(2,1,1);
plot(xp,yp,'r*')
hold on 
subplot(2,1,2);
plot(xp,f(xp),'mo')
xlabel('Eje x')
ylabel ('Eje y')
title('Función cuadratica y Funcion Seno')
grid on
axis ([0 2*pi -1 1])
