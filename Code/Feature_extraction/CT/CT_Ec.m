clear all
clc
load('Ec_CT_a.mat');
load('Ec_CT_b.mat');

T_Ec_CT=[Ec_CT_a,Ec_CT_b];

save T_Ec_CT.mat T_Ec_CT
save D_Ec_CT.mat Ec_CT_a Ec_CT_b

