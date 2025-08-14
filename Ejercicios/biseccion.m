function c=biseccion(f,a,b,N)
if f(a)*f(b)<0 %Bolzano
    for n=1:N %iteracion
        c=(a+b)/2;
        if f(a)*f(c)<0 %Bolzano
            b=c;  %redefinicion
        else
            a=c;  %redefinicion
        end
    end
else
    disp('No se puede realizar bisección en el intervalo ingresado.')
    return
end
end
    