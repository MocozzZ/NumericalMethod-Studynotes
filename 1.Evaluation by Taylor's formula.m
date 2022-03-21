%% Licenced by Twist
% 当时楼主写代码水平还不成熟,并且最近事情比较多,所以先简单维护一下暂时先发表出来.到后期有空时候尽量做的普适性高一点,尽量能做到傻瓜式的操作
% 总体来说比较简单,并且社区里也有很多相关的算法.本人第一份资料就当给各位献丑了

% 问题:使用泰勒估值法估计y=e^(-x)在x=5时的大小
% 要求:分别使用y=e^(-x)和y=1/e^x的泰勒展开进行估值,并比较其误差大小

clc;clear
%预处理数据
e1x=1;m=5;real=exp(-5);ex=1;round=20;
%————————Method 1——————————
fprintf('Question 1:\n')
for i=1:round
    e1x=e1x+(-m)^i/factorial(i);%迭代过程
    M(i)=abs(e1x-real)/real;
end
%做出误差的分析图1
semilogy(M);
title('Error Analysis of Method 1');
xlabel('Number');ylabel('Semilogarithm of error');
fprintf('Results obtained by using method 1 is:%f\n',e1x);
fprintf('The error from the true value is:%f%%\n\n',abs(e1x-real)/real*100);
%————————Method 2——————————
fprintf('Question 2:\n')
for i=1:round
    ex=ex+m^i/factorial(i);%
    N(i)=abs(1/ex-real)/real;
end
%做出误差的分析图2
figure;
semilogy(N);
title('Error Analysis of Method 2');
xlabel('Number');ylabel('Semilogarithm of error');
hold on;
e2x=1/ex;
fprintf('Results obtained by using method 2 is:%f\n',e2x);
fprintf('The error from the true value is:%.6f%%\n',abs(e2x-real)/real*100);
