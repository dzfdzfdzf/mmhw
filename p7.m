clear,clc;
x=[129.0,140.0,103.5,88.0,185.5,195.0 ,105.5, 157.5,107.5,77.0 ,81.0,162.0,162.0,117.5];
y=[7.5,141.5,23.0,147.0, 22.5,137.5,85.5 , -6.5,-81.0,3.0, 56.5,-66.5,84.0, -33.5];
z=[-4, -8, -6, -8, -6, -8, -8, -9, -9, -8, -8, -9, -4, -9];
t1=min(x):0.1:max(x);
t2=min(y):0.1:max(y);
[x1,y1]=meshgrid(t1,t2);
subplot(2,3,1);
z1=griddata(x,y,z,x1,y1,'nearest');
mesh(x1,y1,z1);
hold;
plot3(x,y,z,'o');
title("nearest");
hold off;
subplot(2,3,2);
z1=griddata(x,y,z,x1,y1,'linear');
mesh(x1,y1,z1);
hold;
plot3(x,y,z,'o');
title("linear");
hold off;
subplot(2,3,3)
z1=griddata(x,y,z,x1,y1,'cubic');
mesh(x1,y1,z1);
hold;
plot3(x,y,z,'o');
title("cubic");
hold off;
subplot(2,3,4)
z1=griddata(x,y,z,x1,y1,'natural');
mesh(x1,y1,z1);
hold;
plot3(x,y,z,'o');
title("natural");
hold off;
subplot(2,3,5)
z1=griddata(x,y,z,x1,y1,'v4');
mesh(x1,y1,z1);
hold;
plot3(x,y,z,'o');
title("v4");
hold off;

