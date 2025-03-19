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

Wnt_AC_a=[];
Wnt_AC_b=[];


for i=1:num1
	[AC_Pa,AC_Pb]=AC(A{i},B{i},OriginData,9);
	Wnt_AC_a=[Wnt_AC_a;AC_Pa];
 	Wnt_AC_b=[Wnt_AC_b;AC_Pb];
end
   
data_AC=[Wnt_AC_a,Wnt_AC_b];
   
save T_Wnt_AC.mat data_AC;
save D_Wnt_AC.mat Wnt_AC_a Wnt_AC_b;
