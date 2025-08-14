clear all
close all
clc

x=[1,4,8]
y=[2,8,5]

figure(1)
subplot(1,3,1);
plot(x,y,'m')
c=polyfit(x,y,2)
hold on
grid on
subplot(1,3,2);
plot(x,c,'r')
grid  on
xp=1:0.01:8
subplot(1,3,3);
p=polyval(c,xp);
plot(xp,p,'r')
grid  on

