clear;clc
syms v;
[x, y, z] = dsolve('Dx = v*(30 + 200*cos(t) - x)/sqrt((x - (30 + 200*cos(t)))^2 + (y - (60 + 350*sin(t)))^2+(z - (3000 + 100*sin(0.01*t)))^2)' ,'Dy = v*(60 + 350*sin(t) - y)/sqrt((x - (30 + 200*cos(t)))^2 + (y - (60 + 350*sin(t)))^2+(z - (3000 + 100*sin(0.01*t)))^2)','Dz = v*(3000 + 100*sin(0.01*t) - z)/sqrt((x - (30 + 200*cos(t)))^2 + (y - (60 + 350*sin(t)))^2+(z - (3000 + 100*sin(0.01*t)))^2)','x(0) = 0','y(0) = 0','z(0) = 0','t');

                  
                   