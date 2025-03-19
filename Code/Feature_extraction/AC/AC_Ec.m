clear all
clc
load('Mix_Ecoli_data')
%load('N_proteinA.mat')
%load('N_proteinB.mat')
%load('P_proteinA.mat')
%load('P_proteinB.mat')
load('SVHEHS.mat')
OriginData=SVHEHS;
OriginData=OriginData';
num1=numel(protein_A);

Ec_AC_a=[];
Ec_AC_b=[];


for i=1:num1
	[AC_Pa,AC_Pb]=AC(protein_A{i},protein_B{i},OriginData,9);
	Ec_AC_a=[Ec_AC_a;AC_Pa];
 	Ec_AC_b=[Ec_AC_b;AC_Pb];
end
   
data_AC=[Ec_AC_a,Ec_AC_b];
%data_AC=[[ones(6954,1)],data_AC];
   
save T_Ec_AC.mat data_AC;
save D_Ec_AC.mat Ec_AC_a Ec_AC_b;
