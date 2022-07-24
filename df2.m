function dy=df2(t,y)
dy=zeros(2,1);
dy(1)=y(2)-2*sin(t)*(t<4*pi);
dy(2)=y(1)*(cos(t)*(t>=7*pi/2))-y(2);
end

