clear all
clc
load('Mix_Mmusc_data.mat')
%load('N_protein_b.mat')
%load('P_protein_a.mat')
%load('P_protein_b.mat')
num1=numel(protein_A);

lambda=8
result_1=[];
result_11=[];
    for i=1:num1
     result1=PseAAC(protein_A{i},lambda);
     result11=PseAAC(protein_B{i},lambda);
     result_1=[result_1;result1];
     result1=[];
     result_11=[result_11;result11];
     result11=[];
    end
    
    a=result_1;
    b=result_11;
    Mm_PseAAC=[a,b];
   
save T_Mm_PseAAC.mat Mm_PseAAC
save D_Mm_PseAAC.mat a b
    

