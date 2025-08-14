f=@(x) sin(x);   %%Para escribir una funcion 
a=0;
b=2*pi;
h=0.1;
int=trap_comp(f,a,b,h)
%% FUNCION TRAPZ
x = [0:0.1:2*pi];%datos
y= sin(x);%Imagen
Q= trapz(y) %funcion de matlab
%% FUNCION INTEGRAL
q=integral(f,a,b)