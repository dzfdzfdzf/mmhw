clc;clear
name = ["Af","Apf"];
p1=[1.24,1.27;1.36,1.74;1.38,1.64;1.38,1.82;1.38,1.90; 
    1.40,1.70;1.48,1.82;1.54,1.82;1.56,2.08]; 
p2=[1.14,1.78;1.18,1.96;1.20,1.86;1.26,2.00 
    1.28,2.00;1.30,1.96]; 
p=[p1;p2]';
pr=minmax(p);
target=[ones(1,9),zeros(1,6);zeros(1,9),ones(1,6)]; 
net=newff(pr,[5,2],{'logsig','logsig'}); 
net.trainParam.show = 10; 
net.trainParam.lr = 0.05; 
net.trainParam.goal = 1e-10; 
net.trainParam.epochs = 50000; 
net = train(net,p,target);
x=[1.24 1.80;1.28 1.84;1.40 2.04]'; 
y=sim(net,x) ;
for i = 1:3
    if(y(1,i) > y(2,i))
        fprintf("第%d个为%s\n",i,name(1));
    else
        fprintf("第%d个为%s\n",i,name(2));
    end
end
