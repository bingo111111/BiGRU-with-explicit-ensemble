clear all
clc
load('A.mat')
load('B.mat')
%load('N_proteinA.mat')
%load('N_proteinB.mat')
%load('P_proteinA.mat')
%load('P_proteinB.mat')
load('SVHEHS.mat')
OriginData=SVHEHS;
OriginData=OriginData';
num1=numel(A);

Dis_AC_a=[];
Dis_AC_b=[];


for i=1:num1
	[AC_Pa,AC_Pb]=AC(A{i},B{i},OriginData,9);
	Dis_AC_a=[Dis_AC_a;AC_Pa];
 	Dis_AC_b=[Dis_AC_b;AC_Pb];
end
   
data_AC=[Dis_AC_a,Dis_AC_b];

save T_Dis_AC.mat data_AC;
save D_Dis_AC.mat Dis_AC_a Dis_AC_b;
