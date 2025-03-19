clear all
clc
load('H_CT_Pa.mat');
load('H_CT_Pb.mat');
load('H_CT_Na.mat');
load('H_CT_Nb.mat');

H_CT=[[H_CT_Pa,H_CT_Pb];[H_CT_Na,H_CT_Nb]];
T_H_CT=[[ones(1458,1);zeros(1458,1)],H_CT];
%save H_CT.mat H_CT

%total = ['T_H_AC_' num2str(lag) '.mat'];%�ļ�����
save('T_H_CT.mat','T_H_CT')%�����ļ�   

%divide = ['D_H_AC_' num2str(lag) '.mat'];%�ļ�����
save('D_H_CT.mat','H_CT_Pa','H_CT_Pb','H_CT_Na','H_CT_Nb')%�����ļ�
