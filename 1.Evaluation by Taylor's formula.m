%% Licenced by Twist
% ��ʱ¥��д����ˮƽ��������,�����������Ƚ϶�,�����ȼ�ά��һ����ʱ�ȷ������.�������п�ʱ�������������Ը�һ��,����������ɵ��ʽ�Ĳ���
% ������˵�Ƚϼ�,����������Ҳ�кܶ���ص��㷨.���˵�һ�����Ͼ͵�����λ�׳���

% ����:ʹ��̩�չ�ֵ������y=e^(-x)��x=5ʱ�Ĵ�С
% Ҫ��:�ֱ�ʹ��y=e^(-x)��y=1/e^x��̩��չ�����й�ֵ,���Ƚ�������С

clc;clear
%Ԥ��������
e1x=1;m=5;real=exp(-5);ex=1;round=20;
%����������������Method 1��������������������
fprintf('Question 1:\n')
for i=1:round
    e1x=e1x+(-m)^i/factorial(i);%��������
    M(i)=abs(e1x-real)/real;
end
%�������ķ���ͼ1
semilogy(M);
title('Error Analysis of Method 1');
xlabel('Number');ylabel('Semilogarithm of error');
fprintf('Results obtained by using method 1 is:%f\n',e1x);
fprintf('The error from the true value is:%f%%\n\n',abs(e1x-real)/real*100);
%����������������Method 2��������������������
fprintf('Question 2:\n')
for i=1:round
    ex=ex+m^i/factorial(i);%
    N(i)=abs(1/ex-real)/real;
end
%�������ķ���ͼ2
figure;
semilogy(N);
title('Error Analysis of Method 2');
xlabel('Number');ylabel('Semilogarithm of error');
hold on;
e2x=1/ex;
fprintf('Results obtained by using method 2 is:%f\n',e2x);
fprintf('The error from the true value is:%.6f%%\n',abs(e2x-real)/real*100);
