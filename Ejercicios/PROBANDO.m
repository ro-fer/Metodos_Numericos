clc
v=[10 20 50 69 8 5];
N=length(v);
k=0;
for n=1:2:N
    k=k+1;
    T(k)=v(n);
end
disp(T)
j=0;
disp('----')
for b=2:2:N
    j=j+1;
    H(j)=v(b);
end
disp(H)

    