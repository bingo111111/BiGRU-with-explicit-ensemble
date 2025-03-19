clear all
clc
load Mix_Mmusc_data.mat 
%load N_protein_a.mat 
%load N_protein_b.mat
%load P_protein_a.mat
%load P_proteinB_b.mat
num1=numel(protein_A)
LD_a=[];
LD_b=[];
for i=1:num1
[M1]=LDZD(protein_A{i});
M=[M1];
LD_a=[LD_a;M];
clear M;clear M1;
end
for i=1:num1
[M1]=LDZD(protein_B{i});
M=[M1];
LD_b=[LD_b;M];
clear M;clear M1;
end

Mm_LD=[LD_a,LD_b];

save T_Mm_LD.mat Mm_LD
save D_Mm_LD.mat LD_a LD_b
  