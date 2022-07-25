clear;clc
% 1:1
% 2: 2 4 8 1 3 6 1 2 5 1
% 3: 3 9 2 8 2 7 2 6 1 5 1 5 1 4 1 4 1 3 1 3 1 
a = zeros(19,9);
for i = 1 : 19
    for j = 1 : 9
        b = int64(j.^i);
        c = str2num(num2str(b)')'
        a(i,j) = c(1);
    end
end


p = zeros(9,9);
for i = 1 : 9
    d = zeros(1,9);
    for j = 1 : 19
        d(1,a(j,i)) = d(1,a(j,i)) + 1;
    end
     for j = 1 : 9
         p(i,j) = d(1,j)/19;
     end
end
    
        

for i = 1 : 9
    for j = 1 : 9
    fprintf("%d的n次方中%d出现的概率为%.2f\n",i,j,p(i,j));
    end
end
