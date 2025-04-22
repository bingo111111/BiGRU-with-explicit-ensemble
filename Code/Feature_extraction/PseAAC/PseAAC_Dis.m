clear all
clc

load('A.mat')
load('B.mat')
num1=numel(A);

lambda=8;
result_1=[];
result_11=[];
    for i=1:num1
     result1=PseAAC(A{i},lambda);
     result11=PseAAC(B{i},lambda);
     result_1=[result_1;result1];
     result1=[];
     result_11=[result_11;result11];
     result11=[];
    end
    
    a=result_1;
    b=result_11;
    Dis_PseAAC=[a,b];
   
save T_Dis_PseAAC.mat Dis_PseAAC
save D_Dis_PseAAC.mat a b
    

