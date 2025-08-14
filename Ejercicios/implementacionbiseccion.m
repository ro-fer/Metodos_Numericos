a=0;
b=2;
f=@(x) exp(-x)-x;   %%Para escribir una funcion 
N=100;
resultado=biseccion(f,a,b,N)