close all
clear all
clc

f=@(x) -sin(x);   %%Para escribir una funcion 
a=0;
b=pi;
h=0.01;
int=simpson(f,a,b,h)

int2=quad(f,a,b,0.01)



