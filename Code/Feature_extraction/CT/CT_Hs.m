clear all
clc
load('Hs_CT_a.mat');
load('Hs_CT_b.mat');

T_Hs_CT=[Hs_CT_a,Hs_CT_b];

save T_Hs_CT.mat T_Hs_CT
save D_Hs_CT.mat Hs_CT_a Hs_CT_b

