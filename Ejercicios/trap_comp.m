function s=trap_comp(f,a,b,h) 
N=(b-a)/h;
sum=0;
for n=a+h:h:b-h %iteracion
    sum=f(n)+sum;
end
s=h*(((f(a)+f(b))/2 )+ sum);
end
