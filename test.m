f=@(t,r) (142884+1.21*r.*r-831.6*r.*cos(2*t)).^(1/2); 
r=0:0.1:75; 
q=arrayfun(@(R)quad(f,0,90,[],[],R),r); 
