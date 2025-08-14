function [raiz,int,cant]=biseccion_Newton(f,a,b,N,df,er)
if f(a)*f(b)<0 %Bolzano
    for n=1:N %iteracion
        c=(a+b)/2;
        raiz=c;
        if f(a)*f(c)<0 %Bolzano
            b=c;  %redefinicion
        else
            a=c;  %redefinicion
        end
    end
    int=[a b];
    tol=100;
    cant=0;
    while tol>er
        aux=raiz-(f(raiz)/df(raiz));
        tol=abs(aux-raiz);
        raiz=aux;
        cant=cant+1;
    end
else
    disp('El problema no tiene solución para dicho intervalo.')
    int='--';
    raiz='--';
    cant='--';
    return;
end
end