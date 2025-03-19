clear all
clc
load('Mix_Mmusc_data')
%load('N_proteinA.mat')
%load('N_proteinB.mat')
%load('P_proteinA.mat')
%load('P_proteinB.mat')
load('SVHEHS.mat')
OriginData=SVHEHS;
OriginData=OriginData';
num1=numel(protein_A);

Mm_AC_a=[];
Mm_AC_b=[];


for i=1:num1
	[AC_Pa,AC_Pb]=AC(protein_A{i},protein_B{i},OriginData,9);
	Mm_AC_a=[Mm_AC_a;AC_Pa];
 	Mm_AC_b=[Mm_AC_b;AC_Pb];
end
   
data_AC=[Mm_AC_a,Mm_AC_b];
%data_AC=[[ones(313,1)],data_AC];
   
save T_Mm_AC.mat data_AC;
save D_Mm_AC.mat Mm_AC_a Mm_AC_b;
