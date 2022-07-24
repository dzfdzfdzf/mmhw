clc;clear
syms x0 y0;
m=[ 0.5 0 0 0.5 0 0; 
    0.5 0 0 0.5 0.5 0; 
    0.5 0 0 0.5 0.25 0.5];
x(1) = 0;
y(1) = 0;
for i = 1 : 100000
    s1 = randi(3,1,1);
    r=m(s1,:);
    a = r(1);
    b = r(2);
    c = r(3);
    d = r(4);
    e = r(5);
    f = r(6);
    x(end + 1) = a*x(end) + b*y(end) + e;
    y(end + 1) = c*x(end) + d*y(end) + f;
    figure(1);
    plot(x,y);
end
