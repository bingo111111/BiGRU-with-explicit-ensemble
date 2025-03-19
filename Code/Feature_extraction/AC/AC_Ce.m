clear all
clc
load('Mix_Celeg_data.mat')
%load('N_proteinA.mat')
%load('N_proteinB.mat')
%load('P_proteinA.mat')
%load('P_proteinB.mat')
load('SVHEHS.mat')
OriginData=SVHEHS;
OriginData=OriginData';
num1=numel(protein_A);

Ce_AC_a=[];
Ce_AC_b=[];


for i=1:num1
	[AC_Pa,AC_Pb]=AC(protein_A{i},protein_B{i},OriginData,9);
	Ce_AC_a=[Ce_AC_a;AC_Pa];
 	Ce_AC_b=[Ce_AC_b;AC_Pb];
end
   
data_AC=[Ce_AC_a,Ce_AC_b];
%data_AC=[[ones(4013,1)],data_AC];
   
save T_Ce_AC.mat data_AC;
save D_Ce_AC.mat Ce_AC_a Ce_AC_b;
