function Y=EULER(f,t,h,y,N)
e=y;
Y(1)=y;
for n=1:N %iteracion
    e=h*f(e,t(n))+e; %% constante 
    Y(n+1)=e;
end
end