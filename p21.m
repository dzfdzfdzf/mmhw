clear;clc
a=[119 117 115 116 112 121 115 122 116 118 109 112 119 112 117 113 114 109 109 118];
b=[118 119 115 122 118 121 120 122 128 116 120 123 121 119 117 119 128 126 118 125];
[h1,p1,c1] = ttest(a,115);
[h2,p2,c2] = ttest(b,115);
[h3,p3,c3] = ttest2(a,b);
if h1 == 0
    fprintf("根据一月判断可靠\n");
else
    fprintf("根据一月判断不可靠\n");
end

if h2 == 0
    fprintf("根据二月判断可靠\n");
else
    fprintf("根据二月判断不可靠\n");
end

fprintf("一月汽油价格置信区间为(%s,%s)\n",num2str(c1(1)),num2str(c1(2)));
fprintf("二月汽油价格置信区间为(%s,%s)\n",num2str(c2(1)),num2str(c2(2)));

fprintf("一月二月汽油价格差置信区间为(%s,%s)\n",num2str(c3(1)),num2str(c3(2)));