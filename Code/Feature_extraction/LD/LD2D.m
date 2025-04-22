function [ld2ne]=LD2D(numberne)
lam=numel(numberne);
number=numberne;
out=[];
for j=1:lam
set=number{j};
choice=set;
% choice=[1;2;3;2;2;1];
% choice=choice';
Zmark=[];
for i=1:length(choice)-1;
choice1=choice(:,[i,i+1]);
choice2=num2str(choice1);
% a='12';
% h=[];
mark=LDexchange(choice2);
Zmark=[Zmark,mark];
end
N1=length(choice);
for k=1:21
    ve{k}=length(find(Zmark==k));
end
MLD1=cell2mat(ve);
MLD2=MLD1/N1;
vector1{j}=MLD2;
ve=[];
set=[];
end
NUM=numel(vector1);
% for k=1:2:(NUM-1)
%     out=[out;[vector1{k},vector1{k+1}]];
% end
for k=1:lam
    out=[out,[vector1{k}]];
end
ld2ne=out;
