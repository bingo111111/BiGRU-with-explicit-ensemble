clear all
clc

load('A.mat')
load('B.mat')
load('SVHEHS.mat')
OriginData=SVHEHS;
OriginData=OriginData';
num1=numel(A);
lag=7;

AD_a=[];
AD_b=[];
    for i=1:num1
        [M1]=AD1(A{i},OriginData,lag);
        [M2]=AD2(A{i},OriginData,lag);
        [M3]=AD3(A{i},OriginData,lag);
        M=[M1,M2,M3];
        AD_a=[AD_a;M];
        clear M;clear M1 M2 M3;
    end
    for i=1:num1
        [M1]=AD1(B{i},OriginData,lag);
        [M2]=AD2(B{i},OriginData,lag);
        [M3]=AD3(B{i},OriginData,lag);
        M=[M1,M2,M3];
        AD_b=[AD_b;M];
        clear M;clear M1 M2 M3;
    end
   
    data_AD=[AD_a,AD_b];

save T_Wnt_AD.mat data_AD
save D_Wnt_AD.mat AD_a AD_b
