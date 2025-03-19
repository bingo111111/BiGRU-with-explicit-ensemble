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

One_AC_a=[];
One_AC_b=[];


for i=1:num1
	[AC_Pa,AC_Pb]=AC(A{i},B{i},OriginData,9);
	One_AC_a=[One_AC_a;AC_Pa];
 	One_AC_b=[One_AC_b;AC_Pb];
end
   
data_AC=[One_AC_a,One_AC_b];

save T_One_AC.mat data_AC;
save D_One_AC.mat One_AC_a One_AC_b;
