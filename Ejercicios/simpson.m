function s=simpson(f,a,b,h) 
N=(b-a)/h;
sum=0;
sum2=0;
for n=a+h*2:2*h:b-h     %% PAR
    sum=f(n)+sum;
    v(n)=sum;
end
for n=a+h:2*h:b-h    %% IMPAR
    sum2=f(n)+sum2;
end
s=(h/3)*(f(a)+2*sum+4*sum2+f(b));
end
