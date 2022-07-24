clear,clc;
syms t x;
f=(1-t*t)^(2/3);
g=int(f,t,0,sin(x));
x=0:0.1:4*pi;
ans=double(subs(g))
plot(x,ans)