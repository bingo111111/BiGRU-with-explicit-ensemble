clear all
clc
load('Wnt_CT_a.mat');
load('Wnt_CT_b.mat');

T_Wnt_CT=[Wnt_CT_a,Wnt_CT_b];

save T_Wnt_CT.mat T_Wnt_CT
save D_Wnt_CT.mat Wnt_CT_a Wnt_CT_b

