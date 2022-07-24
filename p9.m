clc,clear;
tspan=[0,20];
y0=[1;2];
[t,y]=ode45(@df2,tspan,y0);
plot(t,y(:,1),'r',t,y(:,2),'b',t,y(:,1)+y(:,2),'y');
for i =1:length(t)
    if y(i,1)+y(i,2)<=0.15&& y(i,1)+y(i,2)>=-0.15
        display(t(i));
    end
end

    
