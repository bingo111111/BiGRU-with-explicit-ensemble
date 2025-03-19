clear all
clc
load('Dis_CT_a.mat');
load('Dis_CT_b.mat');

T_Dis_CT=[Dis_CT_a,Dis_CT_b];

save T_Dis_CT.mat T_Dis_CT
save D_Dis_CT.mat Dis_CT_a Dis_CT_b

