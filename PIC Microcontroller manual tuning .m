clc
clear all
close all


syms s

%G=1/(s^2+3s+1)

num=1;
den=sym2poly(s^2+3*s+1);

G=tf(num,den);

H=1;

step (feedback(G,H))
hold on



%%
Kp=1;
Ki=0;
Kd=0;

C=pid(Kp,Ki,Kd);

T=feedback(C*G,H);

step(T)