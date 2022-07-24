clc;clear
a = normcdf(250,300,35);
res1 = 1 - a;
fprintf("%d",res1);
b = norminv(0.95,0,1);
res2 = 35*b;
fprintf("%d",res2);