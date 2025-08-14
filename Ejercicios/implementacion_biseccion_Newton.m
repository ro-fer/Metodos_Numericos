%% Datos grales Implementacion
clear all
close all
clc
a=-2;
b=10;
N=5;
er=0.01;
f=@(x) -exp(-sin(2*x))-x;   
df=@(x) 2*exp(-sin(2*x))*cos(2*x)-1;
[raiz,int,cant]=biseccion_Newton(f,a,b,N,df,er)