clear all
clc
load('Mm_CT_a.mat');
load('Mm_CT_b.mat');

T_Mm_CT=[Mm_CT_a,Mm_CT_b];

save T_Mm_CT.mat T_Mm_CT
save D_Mm_CT.mat Mm_CT_a Mm_CT_b

