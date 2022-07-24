clc,clear;
%syms x a b
%ff=@(x,a,b)(sin(a.*x)).^2+(b.^2).*exp(-a.*x.^2).*(cos.(x)).^9;
%[l,n]=quad(@(x)f(x,a,b),0,2);
%F=int((sin(a.*x)).^2+(b.^2).*exp(-a.*x.^2).*(cos(x)).^9,x,0,2);
%F = matlabFunction(F);
a=-2:0.0001:4;
b=-2:0.0001:4;
y=arrayfun(@(a,b)quad(@(x)(sin(a.*x)).^2+(b.^2).*exp(-a.*x.^2).*(cos(x)).^9,0,2),a,b);
plot3(a,b,y);
[ymin,k]=min(y);
display(a(k));
display(b(k));

