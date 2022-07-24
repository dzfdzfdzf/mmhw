clc,clear;
syms x y;
eqns=[(x^2)*cos(2*x)+(y^2)*sin(2*y)==1,(x^3)+(y^3)-6*cos(2*x*y)==-1];
vars=[x y];
[xx,yy]=vpasolve(eqns,vars);
display(xx);
display(yy);
