%% Datos grales
clear all
close all
clc

xp=0:0.1:2*pi; %vector de valores de xp
yp=sin(xp); % es una func def en matlab q permite pasarle un vector
f=@(x) x.^2; % creo una func q depende de x y me va devolver valores
 %al poner x. significa que si pongo un vector me devuelve cada elemento
g=@(x) x.^3;
h=cos(xp);
%% figure y plot
figure(1)
 plot(xp,yp)
figure(2)
plot(xp,f(xp)) %plot(eje x, eje y,'codigo de color')
% r rojo m magenta

%% Títulos, Ejes, etc

figure(1)
plot(xp,yp,'r')
xlabel('Eje x')
ylabel ('Eje y')
title('Función Seno')
axis ([0 2*pi -1 1])% [xmin xmax ymin ymax]
grid on %agrega grillas

figure(2)
plot(xp,f(xp),'m')
xlabel('Eje x')
ylabel ('Eje y')
title('Función cuadratica')
axis ([0 3 0 2])% [xmin xmax ymin ymax]
grid on

figure(3) %superpos de plots (para verlo en una misma ventana)
plot(xp,yp,'r*')
hold on 
plot(xp,f(xp),'mo')
xlabel('Eje x')
ylabel ('Eje y')
title('Función cuadratica y Funcion Seno')
grid on
axis ([0 2*pi -1 1])

%% Titulo dinamicos y leyendas
%strcat -> concatena palabras y num (los num deben ser string)

figure
t=2;
plot(xp,yp,'r*')
hold on 
plot(xp,f(xp),'mo')
xlabel('Eje x')
ylabel ('Eje y')
title(strcat('Función cuadratica y Funcion Seno. ','valor pirulo= ' ,num2str(t)))
grid on
axis ([0 2*pi -1 1])
legend('Seno','Cuadratica')

%% subplot
figure
%graf1
subplot(2,2,1);
plot(xp,yp,'r*')
hold on 
title('Función seno')
axis ([0 2*pi -1 1])
xlabel('Eje x')
ylabel ('Eje y')
grid on

%graf2
subplot(2,2,2);
plot(xp,f(xp),'ro')
title('Función cuadratica')
axis ([0 3 0 2])
xlabel('Eje x')
ylabel ('Eje y')
grid on

%graf3
subplot(2,2,3);
plot(xp,g(xp),'m*')
title('Función cubica')
axis ([0 3 0 2])
xlabel('Eje x')
ylabel ('Eje y')
grid on

%graf4
subplot(2,2,4);
plot(xp,h,'mo')
title('Función coseno')
xlabel('Eje x')
ylabel ('Eje y')
axis ([0 2*pi -1 1])
grid on


%% Graficos dinamicos

figure
for xp=0:0.1:2*pi
plot(xp,sin(xp),'g*')
hold on
title('Función seno')
axis ([0 2*pi -1 1])
xlabel('Eje x')
ylabel ('Eje y')
grid on
pause(1) %ppause(1)-> espera un seg // pause() no sigue hasta hacer click
end

