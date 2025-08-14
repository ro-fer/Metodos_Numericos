%%
%{
Dada 
f=@(x) (exp(x^4-4x^3+2x^2+8x-8)+x-3)/(x-2);
Considerando la ecuación f(x)=1
1.Haga un dibujo en el intervalo [0, 9/5] de una función convenientemente
definida, de manera tal que sus raíces sean las soluciones de la ecuación
dada. ¿Cuántas sols hay en ese intervalo? (puede responder esto en base al
gráfico hecho)
2¿Se puede aplicar el método de bisección? En tal caso, calcular la sol de
la ec con 4 dígitos decimales exactos. ¿Cuántos pasos de bisección fueron
necesarios para obtener esa exactitud?
3.¿Se puede aplicar Newton? ¿Conviene hacerlo? Explique cual es la ventaja
o desventaja de aplicar Newton
%}
%% 1.1
close all

clc
f=@(x) (exp(x.^4 -4.*x.^3 +2.*x.^2 +8.*x -8) +x-3)./(x-2); %la funcion de la consigna
g=@(x) f(x)-1; % funcion que sus raices son la solucion de f(x)=1
a=0;
b=9/5;
x=a:0.00001:b;
figure(1)
grid on;
plot(x,g(x),'m')
axis([0 9/5 -2 2])
title('g(x)')
xlabel('Eje x')
ylabel('g(x)')
grid on
%{
Hay una única solución en este intervalo ( 1,4 seria el valor aproximado de
x)
%}
%% 1.2
N=15;
resultado=biseccion(g,a,b,N)
%{
Se puede aplicar bisección ya que g(0)*g(9/5)<0; Se requirieron 15 pasos,
como mínimo, para obtener el resultado(El N lo saque a ojo).
%}
%% 1.3
%{
No conviene aplicar Newton, ya que para polinomios de grado 3 no sirve. Se
debería aplicar N-R
%}