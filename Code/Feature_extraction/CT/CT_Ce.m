clear all
clc
load('Ce_CT_a.mat');
load('Ce_CT_b.mat');

T_Ce_CT=[Ce_CT_a,Ce_CT_b];

save T_Ce_CT.mat T_Ce_CT
save D_Ce_CT.mat Ce_CT_a Ce_CT_b

