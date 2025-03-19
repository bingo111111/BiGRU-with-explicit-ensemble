clear all
clc
load('A.mat')
load('B.mat')
num1=numel(A);

LD_a=[];
LD_b=[];
for i=1:num1
[M1]=LDZD(A{i});
M=[M1];
LD_a=[LD_a;M];
clear M;clear M1;
end
for i=1:num1
[M1]=LDZD(B{i});
M=[M1];
LD_b=[LD_b;M];
clear M;clear M1;
end

Dis_LD=[LD_a,LD_b];

save T_Dis_LD.mat Dis_LD
save D_Dis_LD.mat LD_a LD_b
  