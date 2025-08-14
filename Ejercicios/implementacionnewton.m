s=1;
f=@(x) exp(-x)-x;   %%Para escribir una funcion 
df=@(x) -exp(-x)-1;
raiz=newtonraphson(f,s,df)