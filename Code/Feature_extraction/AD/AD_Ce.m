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
lag=7;

AD_a=[];
AD_b=[];
    for i=1:num1
        [M1]=AD1(protein_A{i},OriginData,lag);
        [M2]=AD2(protein_A{i},OriginData,lag);
        [M3]=AD3(protein_A{i},OriginData,lag);
        M=[M1,M2,M3];
        AD_a=[AD_a;M];
        clear M;clear M1 M2 M3;
    end
    for i=1:num1
        [M1]=AD1(protein_B{i},OriginData,lag);
        [M2]=AD2(protein_B{i},OriginData,lag);
        [M3]=AD3(protein_B{i},OriginData,lag);
        M=[M1,M2,M3];
        AD_b=[AD_b;M];
        clear M;clear M1 M2 M3;
    end
   
    data_AD=[AD_a,AD_b];

save T_Ce_AD.mat data_AD
save D_Ce_AD.mat AD_a AD_b
