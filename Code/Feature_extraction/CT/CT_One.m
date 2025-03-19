clear all
clc
load('One_CT_a.mat');
load('One_CT_b.mat');

T_One_CT=[One_CT_a,One_CT_b];

save T_One_CT.mat T_One_CT
save D_One_CT.mat One_CT_a One_CT_b

