clear;clc
x=[93,75,83,93,91,85,84,82,77,76,77,95,94,89,91,88,86,83,96,81,79,97,78,75,67,69,68,84,83,81,75,66,85,70,94,84,83,82,80,78,74,73,76,70,86,76,90,89,71,66,86,73,80,94,79,78,77,63,53,55];

x_avg = mean(x);    %均值
x_std = std(x);     %标准差
x_ran = range(x);   %极差
x_ske = skewness(x);%偏度
x_kur = kurtosis(x);%峰度
figure(1);
histogram(x);       %直方图
[h,p] = jbtest(x,0.05);
if(h == 0)
    disp("分布具有正态性");
else
    disp("分布不具有正态性");
    endigure(2);
normplot(x); %正态分布概率曲线

[muhat,sigmahat,muci,sigmaci] = normfit(x); %估计参数
fprintf("μ估计值为%d\n",muhat);
fprintf("σ估计值为%d\n",sigmahat);
[h,sig,c]=ttest(x,muhat);
if h == 0 
    disp("检验正确");
end