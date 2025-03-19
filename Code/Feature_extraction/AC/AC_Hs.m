clear all
clc
load('Mix_Hsapi_data')
%load('N_proteinA.mat')
%load('N_proteinB.mat')
%load('P_proteinA.mat')
%load('P_proteinB.mat')
load('SVHEHS.mat')
OriginData=SVHEHS;
OriginData=OriginData';
num1=numel(protein_A);

Hs_AC_a=[];
Hs_AC_b=[];


for i=1:num1
	[AC_Pa,AC_Pb]=AC(protein_A{i},protein_B{i},OriginData,9);
	Hs_AC_a=[Hs_AC_a;AC_Pa];
 	Hs_AC_b=[Hs_AC_b;AC_Pb];
end
   
data_AC=[Hs_AC_a,Hs_AC_b];
%data_AC=[[ones(1412,1)],data_AC];
   
save T_Hs_AC.mat data_AC;
save D_Hs_AC.mat Hs_AC_a Hs_AC_b;
