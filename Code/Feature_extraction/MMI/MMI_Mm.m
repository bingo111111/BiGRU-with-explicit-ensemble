clear all
clc
load Mix_Mmusc_data.mat 
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
Mm_MMI_a=[];
Mm_MMI_b=[];
            
 for i=1:num1
        MMI_a=MMI(protein_A(i),abc);
        MMI_b=MMI(protein_B(i),abc);
        Mm_MMI_a=[Mm_MMI_a;MMI_a];
        Mm_MMI_b=[Mm_MMI_b;MMI_b];   
 end
 
Mm_MMI=[Mm_MMI_a,Mm_MMI_b];

save T_Mm_MMI.mat Mm_MMI;
save D_Mm_MMI.mat Mm_MMI_a Mm_MMI_b;