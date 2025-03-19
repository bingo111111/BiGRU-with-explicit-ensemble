clear all
clc
load Mix_Celeg_data.mat 
num1=numel(protein_A);
abc=[1,1,1;2,2,2;3,3,3;4,4,4;5,5,5;6,6,6;7,7,7];%三个一样
%三个不一样
for i=1:7
    for j=i+1:7
        for k=j+1:7
            abc=[abc;i,j,k];
        end
    end
end
%两个不一样
for i=1:7
    for j=i+1:7
        for k=i
            abc=[abc;i,j,k];
        end
    end
end
for i=1:7
    for j=i+1:7
        for k=j
            abc=[abc;i,j,k];
        end
    end
end
Ce_MMI_a=[];
Ce_MMI_b=[];
            
 for i=1:num1
        MMI_a=MMI(protein_A(i),abc);
        MMI_b=MMI(protein_B(i),abc);
        Ce_MMI_a=[Ce_MMI_a;MMI_a];
        Ce_MMI_b=[Ce_MMI_b;MMI_b];   
 end
 
 Ce_MMI=[Ce_MMI_a,Ce_MMI_b];

save T_Ce_MMI.mat Ce_MMI;
save D_Ce_MMI.mat Ce_MMI_a Ce_MMI_b;
