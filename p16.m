clear;clc
x = -5:0.1:5;
y = x;
[x,y]=meshgrid(x,y);
z = exp(x.^2 + y.^2);

figure(1);
mesh(x,y,z);
title('标准函数图像');
x1=x(:)';
y1=y(:)';
z1=z(:)';
p1=[x1',y1']';
pr = minmax(p1);
target=z1;
net=newff(pr,[5,4,1],{'logsig','logsig','logsig'},'trainrp');
net.trainParam.epochs=10000;
net.trainParam.goal=0.1; 
net.trainParam.lr = 0.05; 
%net.trainParam.mu=1;
net = train(net,p1,target);
res = sim(net,p1);
res1=reshape(res,51,51);
figure(2)
mesh(x,y,res1);
title('逼近函数图像');
